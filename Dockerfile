#Define image base
FROM nginx:alpine

#Copy any file ends with html to  nignx path to open it
COPY *.html /usr/share/nginx/html

#rewrite default.conf to accept app port and name 
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
