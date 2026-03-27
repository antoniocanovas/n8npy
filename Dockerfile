FROM node:20-alpine
RUN apk add --no-cache python3 py3-pip
RUN python3 -m venv /home/node/python-venv
RUN /home/node/python-venv/bin/pip install --upgrade pip
RUN npm install -g n8n
USER node
EXPOSE 5678
CMD ["n8n"]
