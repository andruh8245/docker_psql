# docker_psql

docker build -t python3_sql .


docker run -it -p 80:5000  -v /srv/app:/srv/app python3_sql
