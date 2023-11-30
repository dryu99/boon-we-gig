import { AppCity, CITIES } from "@/lib/city";
import { usePathname, useRouter } from "@/lib/navigation";
import { notFound } from "next/navigation";

// TODO we should actually fetch curr location data in parent and pass into this component
//      we can do this by querying venue table, GROUP BY cities and just getting a list

export const CityPicker = ({ initialCity }: { initialCity: AppCity }) => {
  const router = useRouter();

  return (
    <div>
      {/* TODO add translations to props */}
      <select
        className="text-lg -ml-1 underline rounded bg-secondary text-center hover:cursor-pointer"
        value={initialCity.toLowerCase()}
        onChange={(e) => router.push(`/${e.target.value}`)}
      >
        {CITIES.map((city) => (
          <option key={city} value={city}>
            {city.toUpperCase()}
          </option>
        ))}
      </select>
    </div>
  );
};
