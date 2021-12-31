# Base image
FROM node:alpine

# Base Directory
WORKDIR /app

# Copy package.json - js 코드가 바뀐 경우 해당 레이어를 재빌드하지 않기 위해서
COPY ./package.json .

# npm install
RUN npm install

# Copy all files
COPY . .

# Start CMD
CMD ["npm", "start"]