FROM node:18

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "run", "start"]








#FROM node:18

#WORKDIR /app

#COPY . .

# Yarn is already pre-installed in this image
#RUN yarn install

#RUN yarn build

#CMD ["yarn", "start"]
