FROM nginx:1.16.0-alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY conf.d/cbr-system.conf /etc/nginx/conf.d
COPY html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
