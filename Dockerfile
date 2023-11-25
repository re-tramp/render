FROM ubuntu:22.04


RUN apt-get update \ 
&& apt-get install -y shellinbox \ 
&& apt-get clean \ 
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
	
	
RUN echo 'root:Root9527' | chpasswd


EXPOSE 22

CMD ["/usr/bin/shellinbox","-t","-s","/:LOGIN"]
