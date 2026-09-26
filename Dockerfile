FROM nginx
MAINTAINER Manasa
LABEL This is movie ticket booking portal
WORKDIR /usr/share/nginx/html/
COPY index.html .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
