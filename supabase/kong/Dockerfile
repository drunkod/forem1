FROM kong:latest

# Веб-служба Rails, которая запускает основное приложение.
# We create the localimages/uploads symlink to enable serving images from 
# the Rails server in production. 
# See https://github.com/forem/forem/issues/13307 for more details.
# RUN mkdir /opt/apps/forem/public/localimages
# RUN ln -s /opt/apps/forem/public/uploads/ /opt/apps/forem/public/localimages/uploads

# ADD ./scripts scripts/
# ADD ./scripts opt/apps/forem/
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
 	&& ln -sf /dev/stderr /var/log/nginx/error.log
ENTRYPOINT ["bash", "/docker-entrypoint.sh"]
CMD ["kong", "docker-start", "--vv"]