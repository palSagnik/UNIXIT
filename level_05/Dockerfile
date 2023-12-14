FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

#adding user for the challenge and making their home directory
RUN adduser -h /home/level5 -s /bin/ash -D level5
RUN echo "level5:ac7cda9e4b81bcc152b2fbd2eb79ae2f" | chpasswd

#banner
COPY ./heckerman.jpg /root/heckerman.jpg
COPY ./flag.py /root/flag.py
COPY ./README /home/level5/README
COPY ./level5.sh /root/level5.sh
RUN chmod +x /root/level5.sh

#set user working directory
WORKDIR /home/level5
RUN chown root:root -R /home/level5
RUN chmod 555 /home/level5

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron 
RUN chmod +x /root/cron.sh

EXPOSE 22

CMD ["/root/level5.sh"]
