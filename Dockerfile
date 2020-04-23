FROM centos/nginx-116-centos7

COPY --chown=default:0 index.html /opt/app-root/src/index.html
RUN chmod a+r+w /opt/app-root/src/index.html

CMD ["nginx" "-g" "daemon off;"]