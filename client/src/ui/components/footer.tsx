import { useTranslations } from "next-intl";
import { PlainInstagramIcon } from "../svgs/plain-instagram-icon";

export const Footer = () => {
  const t = useTranslations("Footer");

  return (
    <div className="text-center text-sm mt-10 mb-4 flex flex-col items-center">
      <div className="w-[100vw] sm:w-[75vw] text-secondary mb-2 text-xs">
        {t("note")}
      </div>
      <div>© 2023 BoonWeGig</div>
      <div className="mb-1">contact: boonwegig@gmail.com</div>
      <div>
        <a href="https://www.instagram.com/boonwegig/">
          <PlainInstagramIcon />
        </a>
      </div>
    </div>
  );
};
