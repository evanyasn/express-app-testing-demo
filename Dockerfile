CMD aws ecr get-login | sed "s/-e none //g" | sh
FROM 420361828844.dkr.ecr.ap-southeast-1.amazonaws.com/xendit/iss/base-node-10.x.x:1.1
COPY package.json package.json
RUN npm install
COPY . .
CMD ["npm", "start"]
