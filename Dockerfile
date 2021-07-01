FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY . .

ENV DISCORD_TOKEN

CMD [ "python", "./bot.py"]
