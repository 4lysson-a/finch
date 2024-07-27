FROM node:lts
WORKDIR /app
COPY package*.json ./
RUN npm ci
RUN npm install -g @nestjs/cli
COPY . .
EXPOSE 3000
CMD ["npm", "run", "start:dev"]
