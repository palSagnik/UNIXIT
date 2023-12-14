FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PubKeyAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

#adding user for the challenge and making their home directory
RUN adduser -h /home/level13 -s /bin/ash -D level13

#banner
COPY ./flag.py /root/flag.py
COPY ./level13.sh /root/level13.sh
RUN chmod +x /root/level13.sh

#set user working directory
WORKDIR /home/level13
#RUN chown rootroot -R /home/level13
#RUN chmod 644 /home/level13

EXPOSE 22

CMD ["/root/level13.sh"]
