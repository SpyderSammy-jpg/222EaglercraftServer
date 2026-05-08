FROM debian:latest

RUN apt update && apt install -y curl wget openjdk-17-jre nodejs npm

WORKDIR /app

# Download Paper 1.12.2
RUN wget https://papermc.io/api/v1/paper/1.12.2/latest/download -O paper.jar

# Download EaglerX bridge
RUN wget https://raw.githubusercontent.com/EaglerX/EaglerX-Bridge/main/bridge.js -O bridge.js

# Create plugins folder
RUN mkdir -p plugins

# Download EaglerXServer plugin
RUN wget https://raw.githubusercontent.com/EaglerX/EaglerX-Server/main/EaglerXServer.jar -O plugins/EaglerXServer.jar

COPY start.sh .
COPY server.properties .
COPY eula.txt .

RUN chmod +x start.sh

CMD ["./start.sh"]
