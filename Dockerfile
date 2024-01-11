FROM node:16.17.1-slim

WORKDIR [/app]

COPY images/* ./images/
COPY styles/* ./styles/
COPY landing_page.html index.html

run npm install -g http-server

CMD ["npx", "http-server", "-p", "8081", "-f", "/landing_page.html"]
