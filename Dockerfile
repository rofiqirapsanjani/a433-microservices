# pulling from the base image
FROM node:14-alpine 

# make a directory inside the cotainer
WORKDIR /app

# copy all file in the current directory to the /app directory in the cotainer
COPY . .

# make a environment variable with the value
ENV NODE_ENV=production
ENV DB_HOST=item-db

#run command
RUN npm install --production --unsafe-perm
RUN npm run build

# expose port 8080 which is the container port
EXPOSE 8080

# run command
CMD ["npm", "start"]