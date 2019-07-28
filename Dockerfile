FROM nginx:1 as dc

COPY nginx.conf /etc/nginx/conf.d/default.conf
