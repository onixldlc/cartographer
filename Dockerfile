FROM node:18-alpine

WORKDIR /app
RUN apk add neovim

COPY . .

RUN npm install -g pnpm@latest
RUN pnpm install && npm run build

## fixed static not being added to standalone
#  for some reason nextjs doesn't automatically do this ?
#  maybe the config is cooked ? :/
WORKDIR /app/interface/
RUN cp -r ./build/static ./build/standalone/build

WORKDIR /app/interface/build/standalone

ENTRYPOINT ["node"]
CMD ["server.js"]
