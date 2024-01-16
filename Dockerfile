FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 

USER 10014    
    
CMD ["node", "index.js"]
