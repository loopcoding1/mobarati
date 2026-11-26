#!/usr/bin/env python3
"""Open Graph share image for Mobarati (1200x630), transparent-safe PIL + raqm."""
import os
from PIL import Image, ImageDraw, ImageFont

OUT = os.path.expanduser("~/workspace/mobarati/public/og-image.png")
DARK = (25, 26, 21, 255)
GREY = (115, 120, 109, 255)
LIGHT_BG = (245, 246, 240, 255)
EMERALD = (5, 150, 105, 255)
WHITE = (255, 255, 255, 255)

KUFI_BLACK = "/usr/share/fonts/truetype/noto/NotoKufiArabic-Black.ttf"
SANS_BOLD = "/usr/share/fonts/truetype/noto/NotoSansArabic-Bold.ttf"
SANS = "/usr/share/fonts/truetype/noto/NotoSansArabic-Regular.ttf"

W, H = 1200, 630
img = Image.new("RGB", (W, H), LIGHT_BG)
d = ImageDraw.Draw(img)

# Dark bottom band
d.rectangle([0, H - 92, W, H], fill=DARK)

# Cap icon, centered top
cap = Image.open(os.path.expanduser("~/workspace/mobarati/public/icon-512.png")).convert("RGBA")
cap = cap.resize((230, 230), Image.LANCZOS)
img.paste(cap, ((W - 230) // 2, 52), cap)

def text_cx(y, s, font, fill):
    # logical-order Arabic, raqm shapes it natively
    d.text((W // 2, y), s, font=font, fill=fill, anchor="ma",
           direction="rtl", language="ar")

title_f = ImageFont.truetype(KUFI_BLACK, 100)
sub_f = ImageFont.truetype(SANS_BOLD, 38)
pill_f = ImageFont.truetype(SANS_BOLD, 30)

text_cx(285, "مباراتي", title_f, DARK)
text_cx(465, "التحضير لمباراة التعليم بالمغرب", sub_f, GREY)

# Bottom band: three segments separated by small emerald dots
# («•» has no glyph in Noto Sans Arabic — it renders as tofu, so draw dots.)
# RTL: the first segment sits on the right; lay out right-to-left.
parts = ["امتحانات رسمية محلولة", "تعليلات قانونية معتمدة", "مجاناً"]
widths = [d.textlength(p, font=pill_f, direction="rtl", language="ar") for p in parts]
gap, dot_r = 34, 5
total = sum(widths) + gap * 2 + dot_r * 4
x_right = (W + total) / 2
y_text = H - 92 + 30
for i, part in enumerate(parts):
    d.text((x_right, y_text), part, font=pill_f, fill=WHITE,
           anchor="ra", direction="rtl", language="ar")
    x_right -= widths[i]
    if i < 2:
        cx = x_right - gap / 2
        d.ellipse([cx - dot_r, y_text + 12, cx + dot_r, y_text + 12 + 2 * dot_r],
                  fill=EMERALD)
        x_right -= gap

img.save(OUT)
print("saved", OUT)
