# Supabase — Local Development

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (must be running)
- Supabase CLI — installed via `npx supabase` (no global install needed)

## Getting Started

```bash
# From the project root
cd supabase

# Start the local Supabase stack (Postgres, Auth, Storage, Studio, etc.)
npx supabase start
```

Once running, note the **API URL** and **anon key** printed in the terminal.
Add them to `frontend/.env.local`:

```
NEXT_PUBLIC_SUPABASE_URL=http://127.0.0.1:54321
NEXT_PUBLIC_SUPABASE_ANON_KEY=<anon key from supabase start>
```

## Database Reset

Applies all migrations and re-seeds the database:

```bash
npx supabase db reset
```

## Migrations

Located in `migrations/`:

| File | Description |
|------|-------------|
| `20260414000000_create_profiles.sql` | Profiles table + auth trigger |
| `20260414000001_create_car_tables.sql` | Makes, models, variants, specs, safety_ratings, reviews, shortlists + RLS |
| `20260414000002_recommend_cars_rpc.sql` | `recommend_cars` RPC function |
| `20260414000003_add_variant_id_to_rpc.sql` | Adds `best_variant_id` to RPC return |

### Creating a new migration

```bash
npx supabase migration new <migration_name>
```

Edit the generated SQL file, then apply with `npx supabase db reset`.

## Seed Data

`seed.sql` contains 10 makes, 34 models, and 132 variants covering the Indian car market.
It runs automatically after migrations on `db reset`.

## Useful Commands

| Command | Description |
|---------|-------------|
| `npx supabase start` | Start local stack |
| `npx supabase stop` | Stop local stack |
| `npx supabase db reset` | Reset DB (migrations + seed) |
| `npx supabase migration new <name>` | Create a new migration |
| `npx supabase status` | Show local service URLs and keys |
| `npx supabase db diff` | Diff live schema against migrations |

## Studio

Supabase Studio is available at **http://127.0.0.1:54323** when the local stack is running.
