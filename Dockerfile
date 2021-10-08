#pull node version 16
FROM node:16

#create directory
WORKDIR /usr/app

#copy all package json files to work directory
COPY package*.json .

#install node modules
RUN npm install

#directory to workdirectory except nodemodules if dockerignore file exist
COPY . .

#open port 3000
EXPOSE 3000

#run start script
CMD [ "npm", "start" ]