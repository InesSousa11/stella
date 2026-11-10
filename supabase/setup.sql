-- Dresmi: run once in Supabase › SQL Editor › New query › Run

-- 1. One row per person holding their wardrobe, looks, plans and wishlist
create table if not exists public.wardrobes (
  user_id uuid primary key default auth.uid() references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.wardrobes enable row level security;

create policy "Read own wardrobe"   on public.wardrobes for select using (auth.uid() = user_id);
create policy "Create own wardrobe" on public.wardrobes for insert with check (auth.uid() = user_id);
create policy "Update own wardrobe" on public.wardrobes for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- 2. Private photo storage: each person can only use their own folder
insert into storage.buckets (id, name, public) values ('photos', 'photos', false)
on conflict (id) do nothing;

create policy "Read own photos"   on storage.objects for select using (bucket_id = 'photos' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "Add own photos"    on storage.objects for insert with check (bucket_id = 'photos' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "Change own photos" on storage.objects for update using (bucket_id = 'photos' and (storage.foldername(name))[1] = auth.uid()::text);
create policy "Delete own photos" on storage.objects for delete using (bucket_id = 'photos' and (storage.foldername(name))[1] = auth.uid()::text);
