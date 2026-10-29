FROM bash:5.2

WORKDIR /app

COPY greetings.sh .

CMD ["bash","greetings.sh"]
