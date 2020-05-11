FROM node
COPY package.json package.json
RUN npm install
RUN npm run test:e2e
COPY . .
CMD ["npm", "start"]
