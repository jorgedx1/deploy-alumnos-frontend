/** @type {import('next').NextConfig} */
const nextConfig = {
  eslint: {
    // ❗ Permite que el build continúe aunque haya errores de ESLint
    ignoreDuringBuilds: true,
  },
};

export default nextConfig;
