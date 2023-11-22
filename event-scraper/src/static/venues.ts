// TODO this used to be a json file but i got too frustrated with no comments.
//      maybe look into another jsonish file format

// Seoul
// "clubsteelface", // TODO doesn't post often
// "spacebrickkorea" // TODO posts events but with multiple days

// CA: {
//   Vancouver: [
//     "the.pearl.vancouver",
//     "foxcabaret",
//     "thecobalt_van",
//     "commodoreballroom",
//     "greenautomusic",
//   ],
// },

// Chuncheon: ["ssmadang.cc"],
// Daegu: ["jamesrecord"],

type ScrapeableVenue = {
  instagramUsername: string;
  city: string;
  country: string;
  externalMapsJson: {
    googleMapsUrl?: string;
    kakaoMapsUrl?: string;
    naverMapsUrl?: string;
  };
  skip: boolean;
};

const seoulVenues: ScrapeableVenue[] = [
  {
    instagramUsername: "musinsagarage",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "hongdaeff",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "cafe.idaho",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "thestudiohbc",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "club_sharp",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "strangefruit.seoul",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "seendosi",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {
      googleMapsUrl: "https://maps.app.goo.gl/4yy12URtMUpqNskE9",
      kakaoMapsUrl: "https://kko.to/Ex-3Y3SlXM",
      naverMapsUrl: "https://naver.me/GLKA3Nx6",
    },
    skip: false,
  },
  {
    instagramUsername: "channel1969.seoul",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "morene__sukha",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "echo.seoul",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "rollinghall",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "unplugged_stage",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "space_hangang",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "club_onair",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "youkillbong",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "mudaeruk",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "kill_the_youtube",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "tonestudio_kr",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "salon.moonbow",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "senggistudio",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "gongsangondo",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "kuchucamp_",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "club_victim",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "petsoundsmusicpub",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "spacestation2017",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "zak_eun_mul",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "acs.kr",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "hukezliveinfo",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "jebidabang",
    city: "Seoul",
    country: "KO",
    externalMapsJson: {
      googleMapsUrl: "https://maps.app.goo.gl/sHaGCGS9x9v49BVP6",
      naverMapsUrl: "https://naver.me/xKQWYKZE",
      kakaoMapsUrl: "https://kko.to/l4VNPSmLVA",
    },
    skip: false,
  },
];

const busanVenues: ScrapeableVenue[] = [
  {
    instagramUsername: "the_vinyl_underground",
    city: "Busan",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "basement_the_shizzle",
    city: "Busan",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "someday_bar",
    city: "Busan",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "clubrealize",
    city: "Busan",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "ovantgarde",
    city: "Busan",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  {
    instagramUsername: "yugiche",
    city: "Busan",
    country: "KO",
    externalMapsJson: {},
    skip: false,
  },
  // Busan End
];

export const scrapeableVenues: ScrapeableVenue[] =
  seoulVenues.concat(busanVenues);
