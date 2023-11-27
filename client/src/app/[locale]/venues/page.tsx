import { fetchManyVenues } from "@/lib/actions";
import { AppLocale } from "@/lib/locale";
import { Link, redirect } from "@/lib/navigation";
import { getLocalizedVenueName } from "@/lib/venue.helper";
import { courier } from "@/ui/fonts";
import { getTranslations } from "next-intl/server";

export default async function VenuesPage({
  params,
}: {
  params: { locale: AppLocale };
}) {
  let venues = await fetchManyVenues(params.locale, {
    filter: { city: "Seoul" },
  });

  const t = await getTranslations("VenuesPage");

  return (
    <div className="w-full self-start">
      <h2 className="font-bold">{t("venues")}</h2>
      <div>
        {venues.map((venue, i) => (
          <div key={venue.id}>
            <span className={`${courier.className}`}>
              {(i + 1).toString().padStart(2, "0")}.
            </span>{" "}
            <Link className="hover:underline" href={`/venues/${venue.slug}`}>
              {getLocalizedVenueName(venue, params.locale)}
            </Link>
          </div>
        ))}
      </div>
    </div>
  );
}
