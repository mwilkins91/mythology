
docker rm -f myth-api || true
docker run --name myth-api --env-file ./.docker-env -v /Users/wilkinm/postgres:/var/lib/postgresql/data -d postgres:alpine