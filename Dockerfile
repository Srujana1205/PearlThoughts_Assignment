FROM node:18

WORKDIR /app

COPY package.json ./
RUN npm install --legacy-peer-deps

COPY . .
COPY medusa-config.js ./

EXPOSE 9000

CMD ["npm", "run", "start"]









#FROM node:18

#WORKDIR /app

#COPY . .

# Yarn is already pre-installed in this image
#RUN yarn install

#RUN yarn build

#CMD ["yarn", "start"]
