FROM haskell:8

RUN apt-get update && apt-get install -y postgresql libpq-dev
ENV PORT 8000
ENV DATABASE_URL psql://postgres:postgres@postgres:5432/
ENV LOG true

WORKDIR /opt

RUN cabal update

# Not sure but at least try to cache something
COPY station.cabal .
COPY bin /opt/bin

RUN cabal install

# copy probably web related stuff
COPY . .

CMD ["cabal", "v2-run"]
