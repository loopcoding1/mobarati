-- Migration 4 — site-wide visitor analytics (2026-11-27)
-- No PII: session_id is a random UUID in the visitor's own browser (localStorage).
-- No IP address, no name, no email is ever stored. Events are aggregate only.
-- RLS: anon may INSERT (tracking) and SELECT (dashboard Space reads).
-- The exam catalog tables keep their SELECT-only policies; this table is separate.
create table if not exists public.site_analytics (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  session_id text not null,
  event_type text not null check (event_type in ('pageview','exam_start','exam_finish','support_click','pdf_open')),
  page text,
  specialty_id text,
  exam_id text,
  exam_title text,
  mode text,
  score_pct int,
  correct_count int,
  total_questions int,
  device text,
  referrer text
);

alter table public.site_analytics enable row level security;

drop policy if exists "anon insert analytics" on public.site_analytics;
create policy "anon insert analytics" on public.site_analytics
  for insert to anon with check (true);

drop policy if exists "anon select analytics" on public.site_analytics;
create policy "anon select analytics" on public.site_analytics
  for select to anon using (true);

create index if not exists site_analytics_created_idx on public.site_analytics (created_at desc);
create index if not exists site_analytics_event_idx on public.site_analytics (event_type, created_at desc);
create index if not exists site_analytics_exam_idx on public.site_analytics (exam_id, created_at desc);
