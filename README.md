# docker_psql

docker build -t python3_sql .
docker run -d -p 81:5432  -v /srv/app:/srv/app python3_sql
