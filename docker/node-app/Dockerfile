FROM node:20-alpine AS dependencies
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev 
FROM node:20-alpine AS runtime
ENV NODE_ENV=production
WORKDIR /app
COPY --chown=node:node package.json server.js ./
USER node
EXPOSE 3000
CMD ["node", "server.js"]
 
