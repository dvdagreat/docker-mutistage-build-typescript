# Purpose. (What?)

Make a project setup in such a way that a typescript project is converted into javascript during docker image creation process and only the compiled output is used in the final production image.

Gist: Docker Multi-stage build with TypeScript project

<br/>

# Steps to run (How?)

## Prerequisites

- git
- docker-compose
- node and npm

<br/>

### Step 1:

clone the project and `cd` into it

<br/>

### Step 2:

build the project image using below command

```
npm run build
```

<br/>

### Step 3:

start the image container

```
npm run start:prod:container
```

<br/>

### Step 4:

check the output

```
http://localhost:5000
```

<br/>

### For stopping and removing the container:

```
npm run stop:prod:container
```

<br/>

### If not working, check below points

- Port 5000 is not already occupied
- there is no other image or container with the name "ts-app"
