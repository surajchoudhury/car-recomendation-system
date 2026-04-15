# Car Recommendation System

## What I Built and Why

A car recommendation platform that helps a buyer go from "I don't know what to buy" to "I'm confident about my shortlist." The Indian car market has hundreds of variants across dozens of brands — most buyers freeze at the research stage. This app narrows the field in three quick steps:

1. **Budget** — set a price range (₹ Lakh)
2. **Usage** — pick driving contexts (city commute, highway, family, off-road, etc.)
3. **Priorities** — choose what matters most (fuel efficiency, safety, performance, comfort)

A PostgreSQL RPC function scores every variant against those preferences and returns a ranked list. Users can shortlist cars they like and revisit them later.

The UI is inspired by CarDekho.com's visual language — orange accent color, card-based layout, light-only theme.

### What I Deliberately Cut

- **Compare feature** — side-by-side comparison of shortlisted cars. Useful but not core to the recommendation flow.
- **Car detail pages** — individual pages per model/variant with full specs. Would need a lot more seed data to be valuable.
- **Dark mode** — CarDekho itself is light-only; spending time on a second theme wasn't worth it.
- **Image handling** — no car images. Would need either an image CDN or licensed assets, both out of scope.
- **Search / filters on results** — the RPC already does the filtering; adding a secondary client-side filter layer wasn't necessary for the MVP.
- **OAuth providers** — only email/password auth. Adding Google/GitHub login is straightforward with Supabase but wasn't the focus.
- **Tests** — no unit or integration tests. Would be the first thing to add with more time.

## Tech Stack

| Layer | Choice | Why |
|-------|--------|-----|
| **Framework** | Next.js 16 (App Router) | Server components for auth-protected pages, server actions for mutations, file-based routing. No separate API layer needed. |
| **Language** | TypeScript | Catches type errors at build time. Supabase CLI generates DB types directly, so the entire stack from Postgres → RPC → component props is type-safe. |
| **Styling** | Tailwind CSS v4 | Utility-first, no CSS files to manage. v4's CSS-variable-based theming (`(--primary)` syntax) made the CarDekho color scheme trivial. |
| **Backend / DB** | Supabase (Postgres) | Auth, database, and RLS in one service. The `recommend_cars` RPC runs the scoring logic entirely in SQL — no application server needed. Local dev via `supabase start` gives a full Postgres + Auth stack in Docker. |
| **Auth** | Supabase Auth (`@supabase/ssr`) | Cookie-based sessions that work with server components. Middleware refreshes tokens; route-group layouts handle redirects. |
| **Icons** | lucide-react | Clean, consistent icon set. Tree-shakeable — only the icons used get bundled. |
| **Utilities** | clsx + tailwind-merge | `cn()` helper for conditional class merging without Tailwind conflicts. |
| **Deployment** | Vercel + Supabase Cloud | Zero-config Next.js hosting. Supabase manages Postgres in production. |

## AI Delegation

### What I Delegated to AI

- **Seed data generation** — 10 makes, 34 models, 132 variants with realistic Indian-market specs and prices. Manually researching and typing this would have taken hours.
- **SQL scoring logic** — the `recommend_cars` RPC function with weighted scoring across fuel efficiency, safety, performance, comfort, and usage-type matching. Iterating on the formula was much faster in conversation.
- **Boilerplate and wiring** — Supabase client factories, middleware, auth callbacks, server actions, route-group layouts. All follow documented patterns but are tedious to type out.
- **Repetitive refactoring** — extracting `formatPrice`, `cn()`, `CarCard`, `ErrorMessage` across multiple files simultaneously. AI applied the same pattern everywhere without missing a spot.
- **Migration authoring** — table schemas with proper foreign keys, cascading deletes, RLS policies, and UUID primary keys.
- **Type generation workflow** — setting up the `generate-types` npm script and wiring `Database` generics into Supabase clients.

### Where AI Helped Most

- **Bulk seed data** — by far the biggest time saver. Accurate prices, specs, and safety ratings for 132 variants would have been a full day of research.
- **Cross-file refactoring** — extracting a component and updating every consumer in one pass, with correct imports and no missed references.
- **SQL RPC function** — the scoring formula went through several iterations (budget weighting, usage-type matching, variant-level safety features). Each iteration was a conversation turn, not a debugging session.

### Where AI Got in the Way

- **Tailwind v4 syntax** — AI initially generated `bg-[var(--primary)]` (v3 syntax) instead of `bg-(--primary)` (v4). Had to correct this across all files after the fact.
- **Supabase `CREATE OR REPLACE FUNCTION`** — AI didn't know that Postgres can't change a function's return type with `CREATE OR REPLACE`. Needed a `DROP FUNCTION` + `CREATE FUNCTION` migration instead. Took a couple of rounds to diagnose.
- **Over-eagerness** — occasionally AI would add extra error handling, comments, or refactoring beyond what was asked. Required explicit "only do what I asked" guardrails.

## If I Had Another 4 Hours

1. **Compare feature** — a side-by-side view for 2–3 shortlisted cars, highlighting differences in specs, safety, and price.
2. **Car detail page** — `/cars/[model_id]` with all variants, full specs table, safety breakdown, and expert reviews pulled from the `reviews` table (already in the schema).
3. **Tests** — Vitest for the scoring RPC (via Supabase's local test helpers), plus Playwright E2E for the recommendation → shortlist flow.
4. **Smarter recommendations** — weight adjustments based on the user's specific usage selections (e.g., "highway + family" should boost safety and comfort together, not independently).
5. **Natural language recommendations** — a free-text input like "safest SUV under ₹12 lakh" or "most fuel-efficient automatic for city driving." An LLM would parse the query into structured filters and sort criteria — body type, transmission, fuel type, price ceiling, safety ranking, etc. — then build a dynamic Postgres query (or a more flexible RPC) rather than mapping to the current fixed-parameter `recommend_cars` function. The current RPC only handles budget + usage + one priority; real user queries combine arbitrary attributes ("diesel + 7-seater + top safety + highway"), so this would need a more expressive query layer underneath.
6. **Image placeholders** — even without real car photos, generating consistent placeholder cards with make/model badges would improve the visual experience significantly.

## Project Structure

```
├── frontend/          # Next.js app
│   ├── src/
│   │   ├── app/       # Pages, layouts, route groups, server actions
│   │   ├── components/# CarCard, ShortlistButton, ErrorMessage, Navbar, SubmitButton
│   │   └── lib/       # Supabase clients, utilities, generated DB types
│   └── package.json
├── supabase/          # Supabase project
│   ├── migrations/    # 4 SQL migrations
│   ├── seed.sql       # Indian car market data
│   └── config.toml
└── README.md
```

## Running Locally

```bash
# 1. Start Supabase (requires Docker)
cd supabase && npx supabase start

# 2. Copy env vars from supabase start output
cp frontend/.env.example frontend/.env.local
# Fill in NEXT_PUBLIC_SUPABASE_URL and NEXT_PUBLIC_SUPABASE_ANON_KEY

# 3. Apply migrations and seed data
npx supabase db reset

# 4. Start the frontend
cd frontend && npm install && npm run dev
```

## Live Demo

https://frontend-ten-chi-37.vercel.app
