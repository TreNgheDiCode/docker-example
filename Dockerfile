#Start by basing on another image
FROM node

ENV MONGODB_DB_USERNAME=admin \
		MONGODB_DB_PWD=password
	
RUN mkdir -p /home/app

COPY ./app /home/app

WORKDIR /home/app

CMD ["node","server.js"]