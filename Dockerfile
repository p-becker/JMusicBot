FROM openjdk:18-slim-buster
WORKDIR /app
RUN apt-get update && \
apt-get install --no-install-recommends -y curl=7.64.0-4+deb10u2 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN curl -LO https://github.com/jagrosh/MusicBot/releases/download/0.3.5/JMusicBot-0.3.5.jar
ENTRYPOINT ["java", "-Dnogui=true","-Dconfig=./settings/config.txt", "-jar", "JMusicBot-0.3.5.jar"]
