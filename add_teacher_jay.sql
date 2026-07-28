-- Run in Supabase SQL Editor before using Teacher Jay.

alter table public.admin_profiles
drop constraint if exists admin_profiles_leader_check;

alter table public.admin_profiles
add constraint admin_profiles_leader_check
check (leader in ('chester', 'ui', 'jay'));

alter table public.bookings
drop constraint if exists bookings_leader_check;

alter table public.bookings
add constraint bookings_leader_check
check (leader in ('chester', 'ui', 'jay'));

alter table public.blocked_slots
drop constraint if exists blocked_slots_leader_check;

alter table public.blocked_slots
add constraint blocked_slots_leader_check
check (leader in ('chester', 'ui', 'jay'));

-- After Teacher Jay's Supabase login account is created, connect the account:
-- insert into public.admin_profiles (user_id, leader)
-- values ('TEACHER_JAY_USER_UUID', 'jay');
