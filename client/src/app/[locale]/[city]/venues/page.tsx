import { fetchManyVenues } from "@/lib/actions";
import { AppCity, localeToCityMap } from "@/lib/city";
import { AppLocale } from "@/lib/locale";
import { Link } from "@/lib/navigation";
import { getLocalizedVenueName } from "@/lib/venue.helper";
import { courier } from "@/ui/fonts";
import { Metadata } from "next";
import { getTranslations } from "next-intl/server";

type Props = {
  params: { locale: AppLocale; city: AppCity };
};

export const generateMetadata = async ({
  params: { locale, city },
}: Props): Promise<Metadata> => {
  const t = await getTranslations({
    locale,
    namespace: "VenuesPageMetadata",
  });

  const displayCity = localeToCityMap[locale][city];

  return {
    title: displayCity + ` ${t("venues")}`,
    description: t("description", { city: displayCity }),
    keywords: t("keywords", { city: displayCity }),
  };
};

export default async function VenuesPage({ params }: Props) {
  const venues = await fetchManyVenues(params.locale, {
    filter: { city: params.city },
  });

  const t = await getTranslations("VenuesPage");

  return (
    <div className="w-full self-start">
      <h2 className="font-bold mb-1">{t("venues")}</h2>
      <p className="text-center text-secondary mb-3">{t("note")}</p>

      <div>
        {venues.map((venue, i) => (
          <div key={venue.id}>
            <span className={`${courier.className}`}>
              {(i + 1).toString().padStart(2, "0")}.
            </span>{" "}
            <Link
              className="hover:underline"
              href={`/${params.city}/venues/${venue.slug}`}
            >
              {getLocalizedVenueName(venue, params.locale)}
            </Link>
          </div>
        ))}
      </div>
    </div>
  );
}
