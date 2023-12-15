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
RUN echo "level13:2aaf7f365e1be978d8c591d87dfd65c0" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level13.sh /root/level13.sh
RUN chmod +x /root/level13.sh

#set user working directory
WORKDIR /home/level13
RUN chown root:root -R /home/level13
RUN chmod 555 /home/level13

COPY ./cron.sh /root/cron.sh 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron
RUN chmod +x /root/cron.sh

EXPOSE 22

CMD ["/root/level13.sh"]
