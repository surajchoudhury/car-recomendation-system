export default function ErrorMessage({ message = "Something went wrong. Please try again." }: { message?: string }) {
  return (
    <div className="flex min-h-screen items-center justify-center">
      <p className="text-red-500">{message}</p>
    </div>
  );
}
