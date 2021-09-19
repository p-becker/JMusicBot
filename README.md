# Build and run
docker build -t pbeckr/JMusicBot . && docker run -v "${PWD}/settings":/app/settings -it pbeckr/JMusicBot
