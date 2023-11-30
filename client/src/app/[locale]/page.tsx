import { CITIES } from "@/lib/city";
import { Link, redirect } from "@/lib/navigation";

export default function IndexPage() {
  return (
    <div className="flex flex-col items-center">
      <h2 className="">choose a city</h2>
      <div className="flex flex-row">
        {CITIES.map((city) => (
          <Link
            className="p-4 text-xl text-secondary hover:underline cursor-pointer"
            href={`/${city.toLowerCase()}`}
            key={city}
          >
            {city.toUpperCase()}
          </Link>
        ))}
      </div>
    </div>
  );
}
