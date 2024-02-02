FROM node:16.17.1-slim

WORKDIR [/app]

COPY images/* ./images/
COPY styles.css .
COPY 30088699_styles.css .
COPY index.html .

run npm install -g http-server

CMD ["npx", "http-server", "-p", "8081"]
