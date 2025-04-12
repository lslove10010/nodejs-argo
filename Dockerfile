FROM node:latest

WORKDIR /app

COPY . .

EXPOSE 8080

RUN apt-get update -y &&\
    addgroup --gid 10008 choreo &&\
    adduser --disabled-password  --no-create-home --uid 10008 --ingroup choreo choreouser &&\
    usermod -aG sudo choreouser &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]


USER 10008
