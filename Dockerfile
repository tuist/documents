# syntax=docker/dockerfile:1

# start from [official listmonk Docker image](https://hub.docker.com/r/listmonk/listmonk/)
FROM documenso/documenso:latest

# wipe existing `config.toml` (we use env vars instead)
# RUN rm -f /listmonk/config.toml && touch /listmonk/config.toml

# add our public folder
# COPY --link public /listmonk/public

# ignored by Fly
# VOLUME [ "/listmonk/uploads" ]

CMD ["node", "apps/web/server.js"]