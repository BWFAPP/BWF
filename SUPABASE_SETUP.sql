-- Run this in your Supabase SQL Editor (supabase.com → your project → SQL Editor)

-- 1. Create the quotes table
create table if not exists public.quotes (
  id          uuid primary key default gen_random_uuid(),
  data        jsonb not null,
  created_at  timestamptz default now(),
  updated_at  timestamptz default now()
);

-- 2. Enable Row Level Security (but allow all for now — you can restrict later)
alter table public.quotes enable row level security;

create policy "Allow all operations" on public.quotes
  for all using (true) with check (true);

-- 3. Done! Your table is ready.
