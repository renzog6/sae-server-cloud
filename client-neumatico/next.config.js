/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,

  i18n: {
    locales: ["es-AR", "en-US"],
    defaultLocale: "es-AR",
  },
};

module.exports = nextConfig;
