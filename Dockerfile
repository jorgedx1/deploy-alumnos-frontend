FROM node:22

# Crear directorio de trabajo
WORKDIR /app

# Copiar solo package.json y package-lock.json (si existe)
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Build de producción
RUN npm run build

# Variables recomendadas
ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1

# Next por defecto usa el puerto 3000
EXPOSE 3000

# En producción usa next start, Railway pondrá PORT y Next lo respeta
CMD ["npm", "start"]
