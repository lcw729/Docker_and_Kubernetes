FROM node:14
WORKDIR /root/go/src/Hybrid_LCW/test/Docker_and_Kubernetes/Kubernetes/Configmap/literal/server.js
COPY package*.json server.js ./
RUN npm install
EXPOSE 8080
CMD ["node", "server.js"]