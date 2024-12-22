FROM node:alpine3.20
WORKDIR /app
COPY package.json ./
RUN pnpm install
COPY . .
EXPOSE 5000
CMD ["pnpm", "run", "start"]