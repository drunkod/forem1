FROM postgrest/postgrest:v9.0.0

# https://postgrest.org/en/stable/install.html#docker

# Run the server
docker run --rm --net=host -p 3000:3000 \
  -e PGRST_DB_URI="postgres://postgres@localhost/postgres" \
  -e PGRST_DB_SCHEMA="public" \
  -e PGRST_DB_ANON_ROLE="postgres" \
  postgrest/postgrest
  
ADD ./scripts scripts/
ADD ./scripts opt/apps/forem/

ENTRYPOINT ["bash", "./scripts/rails.sh"]
