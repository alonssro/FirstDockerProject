#Specify a base image
FROM node:alpine

#Specifying working directoy
WORKDIR /usr/app

#Install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./


#Default command
CMD ["npm", "start"] 