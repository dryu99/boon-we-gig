import { fetchMusicEventBySlug } from "@/lib/actions";
import * as DateHelper from "@/lib/date.helper";
import { toInstagramProfileLink } from "@/lib/external-links";
import { extractKeyGenres } from "@/lib/genre";
import { Link } from "@/lib/navigation";
import {
  GoogleMapsLink,
  NaverMapsLink,
  KakaoMapsLink,
} from "@/ui/components/external-maps-link";
import { NewTag, FreeTag, GenreTag } from "@/ui/components/music-event-tags";
import { InstagramIcon } from "@/ui/svgs/instagram-icon";
import { LocationIcon } from "@/ui/svgs/location-icon";
import { notFound } from "next/navigation";

// TODO add translations
export default async function ConcertPage({
  params,
}: {
  params: { id: string; locale: string };
}) {
  const musicEvent = await fetchMusicEventBySlug(params.id);

  if (!musicEvent) notFound();

  const genres = extractKeyGenres(musicEvent.artists, params.locale);
  const venue = musicEvent.venue;
  const externalMapsJson = venue?.externalMapsJson;
  const dateParts = DateHelper.extractParts(
    musicEvent.startDateTime,
    params.locale
  );

  const isRecent = DateHelper.isRecent(musicEvent.createdAt);
  const showTags = isRecent || musicEvent.isFree || genres.length > 0;

  return (
    // TODO i think its worth adding map icons here. if im looking for a concert id like to be able to see immediately where the venue is instead of having to do an extra link click
    <div className="flex flex-col">
      {/* <h2 className="flex flex-col sm:flex-row sm:items-center"> */}
      <h2 className="flex flex-col mb-2">
        <span className="text-3xl">
          <span className="mr-2">{`${dateParts.dayOfWeek}`}</span>
          <span className="mr-2">{`${dateParts.dateStr}`}</span>
          <span className="mr-2">-</span>
          <span>{`${dateParts.timeStr}`}</span>
        </span>

        {/* <span className="mx-2">@</span> */}
        {/* TODO add error handling for venue null? */}
        {/* TODO figure out how to make location stand out more, using icon seems to not be working */}

        <span>
          <span className="mr-1">@</span>
          <Link className="hover:underline" href={`/venues/${venue?.slug}`}>
            {venue?.name}
          </Link>
        </span>
      </h2>
      <div className="flex flex-row justify-center mb-5">
        {externalMapsJson?.googleMapsUrl && (
          <div className="mx-1">
            <GoogleMapsLink url={externalMapsJson?.googleMapsUrl} />
          </div>
        )}
        {externalMapsJson?.naverMapsUrl && (
          <div className="mx-1">
            <NaverMapsLink url={externalMapsJson?.naverMapsUrl} />
          </div>
        )}
        {externalMapsJson?.kakaoMapsUrl && (
          <div className="mx-1">
            <KakaoMapsLink url={externalMapsJson?.kakaoMapsUrl} />
          </div>
        )}
      </div>
      <div className="text-center mb-4">
        <h3 className="font-bold">feat.</h3>
        <hr className="w-20 mx-auto mb-1" />
        <div>
          {musicEvent.artists.map((a) => (
            <div key={a.id}>{a.name}</div>
          ))}
        </div>
      </div>

      <div className="text-center mb-4">
        <h3 className="font-bold">details</h3>
        <hr className="w-20 mx-auto mb-2" />
        <div className="flex justify-center">
          <a
            href={musicEvent.link}
            // data-umami-event="" TODO add this
          >
            <InstagramIcon />
          </a>
        </div>
      </div>
      {showTags && (
        <div className="text-center">
          <h3 className="font-bold">tags</h3>
          <hr className="w-20 mx-auto mb-1" />
          <div className="flex flex-col">
            {isRecent && (
              <NewTag text={"NEW"} /> // TODO translate
            )}
            {
              musicEvent.isFree && <FreeTag text={"FREE"} /> // TODO translate
            }
            {genres.map((genre, i) => (
              <GenreTag key={i} genre={genre} />
            ))}
          </div>
        </div>
      )}
    </div>
  );
}
