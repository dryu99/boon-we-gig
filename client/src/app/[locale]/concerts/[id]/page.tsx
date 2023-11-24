import { fetchMusicEventBySlug } from "@/lib/actions";
import * as DateHelper from "@/lib/date.helper";
import { toInstagramProfileLink } from "@/lib/external-links";
import { Link } from "@/lib/navigation";
import { InstagramIcon } from "@/ui/svgs/instagram-icon";
import { LocationIcon } from "@/ui/svgs/location-icon";
import { notFound } from "next/navigation";

export default async function ConcertPage({
  params,
}: {
  params: { id: string; locale: string };
}) {
  const musicEvent = await fetchMusicEventBySlug(params.id);

  if (!musicEvent) notFound();

  const venue = musicEvent.venue;
  const dateParts = DateHelper.extractParts(
    musicEvent.startDateTime,
    params.locale
  );

  return (
    // TODO i think its worth adding map icons here. if im looking for a concert id like to be able to see immediately where the venue is instead of having to do an extra link click
    <div className="flex flex-col">
      <h2>
        <span>{`${dateParts.dateStr} (${dateParts.dayOfWeek}) - ${dateParts.timeStr} @ `}</span>
        {/* TODO add error handling for venue null? */}
        {/* TODO figure out how to make location stand out more, using icon seems to not be working */}

        <Link className="hover:underline" href={`/venues/${venue?.slug}`}>
          {venue?.name}
        </Link>
      </h2>
      <div className="text-center mb-7">
        {/* TODO use hr here to create more bottom top margin */}
        <h3 className="underline">feat.</h3>
        <div>
          {musicEvent.artists.map((a) => (
            <div key={a.id}>{a.name}</div>
          ))}
        </div>
      </div>
      {/* <div className="text-center">
        <h3 className="underline">tags</h3>
        TODO crwaete helpers for finding genres, free tag, new tag, etc so you can reuse here and on home page 
      </div> */}
      <div className="text-center">
        <h3 className="underline mb-2">details</h3>
        <div className="flex justify-center">
          <a
            href={musicEvent.link}
            // data-umami-event="" TODO add this
          >
            <InstagramIcon />
          </a>
        </div>
      </div>
    </div>
  );
}
