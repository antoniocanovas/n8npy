FROM node:20-alpine
RUN apk add --no-cache python3 py3-pip
RUN npm install -g n8n
USER node
EXPOSE 5678
CMD ["n8n"]
