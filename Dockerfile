# -----------------
# build stage
# -----------------
FROM node:16.17.1-alpine3.16 AS build
WORKDIR /app
RUN npm install -g typescript
COPY package*.json ./
COPY tsconfig*.json ./

# only install dev dependencies that are used for building
RUN npm i -D

COPY . .
RUN tsc



# -----------------
# deploy stage
# ----------------
FROM node:16.17.1-alpine3.16
WORKDIR /app

# copy build files to new container
COPY --from=build /app/dist ./dist
COPY --from=build /app/package*.json ./

# only install production dependencies
RUN npm ci --production
EXPOSE 5000
CMD ["npm", "start"]
