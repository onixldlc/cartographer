/** @type {import('next').NextConfig} */
const nextConfig = {
  distDir: "build",
  reactStrictMode: true,
  swcMinify: true,
  output: "standalone",
  
  compiler: {
    styledComponents: true
  }
};

module.exports = nextConfig;
