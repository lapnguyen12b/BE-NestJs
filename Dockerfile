# Stage 1
FROM node:16-alpine as development
WORKDIR /app
COPY package.json /app/
RUN yarn install /app
COPY . .
ENV NODE_ENV development
ENV PORT 3000
EXPOSE 3000
CMD ["yarn", "start"]
