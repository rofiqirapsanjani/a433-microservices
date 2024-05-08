# pulling from the base image
FROM node:14-alpine 
 
# make a directory inside the cotainer
WORKDIR /app
 
# copy all file in the current directory to the /app directory in the cotainer
COPY . .
 
# make a environment variable with the value
ENV PORT=3000
ENV AMQP_URL="amqp://localhost:5673"
 
#run command
RUN npm ci
# Expose port 3000
EXPOSE 3000

# run command
CMD ["node", "index.js"]
