#the base image since its an app based on JS
FROM node
WORKDIR /app
COPY . .

#this is needed to host the build ouptut (index.html) of the Angular app
#Since the Angular dev server will not be used (as its prod env & not dev)
#the default port of http-server is 8080, we can change it

RUN npm install -g http-server
EXPOSE 9999
CMD ["http-server", "--port", "9999"]