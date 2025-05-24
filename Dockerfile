FROM eclipse-temurin:21-jdk-alpine
WORKDIR /server

# Tải Purpur 1.21.4 mới nhất
RUN wget -O purpur.jar https://api.purpurmc.org/v2/purpur/1.21.4/latest/download

# Copy script start.sh
COPY start.sh ./
RUN chmod +x start.sh

CMD ["./start.sh"]
