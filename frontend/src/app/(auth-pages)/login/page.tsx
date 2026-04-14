import Link from "next/link";
import { login } from "@/app/actions/auth";
import SubmitButton from "@/components/submit-button";

export default async function LoginPage({
  searchParams,
}: {
  searchParams: Promise<{ error?: string; message?: string }>;
}) {
  const { error, message } = await searchParams;

  return (
    <div className="flex min-h-screen items-center justify-center bg-(--gray-50)">
      <div className="w-full max-w-md space-y-8 rounded-xl border border-(--gray-200) bg-white p-8 shadow-sm">
        <div className="text-center">
          <h1 className="text-2xl font-bold text-(--gray-900)">
            Welcome Back
          </h1>
          <p className="mt-2 text-sm text-(--gray-500)">
            Sign in to find your perfect car
          </p>
        </div>

        <form action={login} className="space-y-6">
          {error && (
            <div className="rounded-lg bg-red-50 p-3 text-sm text-red-600">
              {error}
            </div>
          )}
          {message && (
            <div className="rounded-lg bg-green-50 p-3 text-sm text-green-600">
              {message}
            </div>
          )}
          <div>
            <label htmlFor="email" className="block text-sm font-medium text-(--gray-700)">
              Email
            </label>
            <input
              id="email"
              name="email"
              type="email"
              required
              className="mt-1 block w-full rounded-lg border border-(--gray-200) px-3 py-2.5 text-sm outline-none focus:border-(--primary) focus:ring-1 focus:ring-(--primary)"
              placeholder="you@example.com"
            />
          </div>
          <div>
            <label htmlFor="password" className="block text-sm font-medium text-(--gray-700)">
              Password
            </label>
            <input
              id="password"
              name="password"
              type="password"
              required
              className="mt-1 block w-full rounded-lg border border-(--gray-200) px-3 py-2.5 text-sm outline-none focus:border-(--primary) focus:ring-1 focus:ring-(--primary)"
              placeholder="••••••••"
            />
          </div>
          <SubmitButton
            pendingText="Signing in..."
            className="w-full rounded-lg bg-(--primary) py-2.5 text-sm font-medium text-white hover:bg-(--primary-dark) disabled:opacity-50"
          >
            Sign In
          </SubmitButton>
          <p className="text-center text-sm text-(--gray-500)">
            Don&apos;t have an account?{" "}
            <Link href="/signup" className="font-medium text-(--primary) hover:underline">
              Sign Up
            </Link>
          </p>
        </form>
      </div>
    </div>
  );
}
