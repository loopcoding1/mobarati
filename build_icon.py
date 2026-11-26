#!/usr/bin/env python3
"""Generate the Mobarati brand icon (graduation cap, transparent background).

Draws the cap once at 4x supersampling with PIL, then exports every size the
site needs. The SVG files are written from the same geometry so the vector
and raster marks match.
"""
import os
from PIL import Image, ImageDraw

OUT = os.path.expanduser("~/workspace/mobarati/public")
DARK = (28, 29, 24, 255)      # #1C1D18 — brand dark
EMERALD = (5, 150, 105, 255)  # #059669 — accent
LIGHT_BG = (245, 246, 240, 255)  # #F5F6F0 — site background

S = 4            # supersampling factor
W = 512 * S      # working canvas

def draw_cap(d, dark, emerald, scale=1.0, ox=0, oy=0):
    """Draw the cap on ImageDraw d. Coordinates are in 512-space, scaled."""
    def p(x, y):
        return (ox + x * S * scale, oy + y * S * scale)

    # Skull cap (lower half-ellipse) — drawn first, board sits on top.
    d.pieslice([p(140, 200)[0], p(140, 200)[1], p(372, 400)[0], p(372, 400)[1]],
               start=0, end=180, fill=dark)
    # Mortarboard (diamond)
    d.polygon([p(256, 150), p(470, 245), p(256, 340), p(42, 245)], fill=dark)
    # Tassel: button on the right vertex, cord down, tassel head.
    d.line([p(470, 245), p(470, 330)], fill=emerald, width=int(10 * S * scale))
    d.ellipse([p(470, 245)[0] - 12 * S * scale, p(470, 245)[1] - 12 * S * scale,
               p(470, 245)[0] + 12 * S * scale, p(470, 245)[1] + 12 * S * scale],
              fill=emerald)
    d.ellipse([p(470, 328)[0] - 14 * S * scale, p(470, 328)[1] - 16 * S * scale,
               p(470, 328)[0] + 14 * S * scale, p(470, 328)[1] + 16 * S * scale],
              fill=emerald)


def render_transparent(size):
    img = Image.new("RGBA", (W, W), (0, 0, 0, 0))
    draw_cap(ImageDraw.Draw(img), DARK, EMERALD)
    return img.resize((size, size), Image.LANCZOS)


def render_on_bg(size, bg, pad_frac=0.14):
    """Icon composited on a solid background (Apple touch icon)."""
    img = Image.new("RGBA", (size, size), bg)
    cap = render_transparent(size)
    pad = int(size * pad_frac)
    inner = size - 2 * pad
    cap = cap.resize((inner, inner), Image.LANCZOS)
    img.alpha_composite(cap, (pad, pad))
    return img.convert("RGB")


def svg_content(dark, emerald):
    return f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
  <!-- Mobarati — graduation cap, transparent background -->
  <path d="M140,300 A116,100 0 0 1 372,300 Z" fill="{dark}"/>
  <polygon points="256,150 470,245 256,340 42,245" fill="{dark}"/>
  <line x1="470" y1="245" x2="470" y2="330" stroke="{emerald}" stroke-width="10" stroke-linecap="round"/>
  <circle cx="470" cy="245" r="12" fill="{emerald}"/>
  <ellipse cx="470" cy="344" rx="14" ry="16" fill="{emerald}"/>
</svg>
'''


def main():
    os.makedirs(OUT, exist_ok=True)
    # Transparent PNGs
    render_transparent(512).save(f"{OUT}/icon-512.png")
    render_transparent(192).save(f"{OUT}/icon-192.png")
    render_transparent(32).save(f"{OUT}/favicon-32x32.png")
    render_transparent(16).save(f"{OUT}/favicon-16x16.png")
    # Apple touch icon — solid site background (iOS ignores transparency)
    render_on_bg(180, LIGHT_BG).save(f"{OUT}/apple-touch-icon.png")
    # Maskable 512 — solid background, cap with safe padding
    render_on_bg(512, LIGHT_BG, pad_frac=0.20).save(f"{OUT}/icon-512-maskable.png")
    # SVG favicons (dark for light surfaces, white for the dark header tile)
    with open(f"{OUT}/favicon.svg", "w") as f:
        f.write(svg_content("#1C1D18", "#059669"))
    with open(f"{OUT}/icon-white.svg", "w") as f:
        f.write(svg_content("#FFFFFF", "#34D399"))
    print("wrote:", sorted(os.listdir(OUT)))


if __name__ == "__main__":
    main()
