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
RUN adduser -h /home/level14 -s /bin/ash -D level14
RUN echo "level14:9aa42a885703d234c6729d326665e07a" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level14.sh /root/level14.sh
RUN chmod +x /root/level14.sh

#set user working directory
WORKDIR /home/level14
RUN chown root:root -R /home/level14
RUN chmod 555 /home/level14

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron 
RUN chmod +x /root/cron.sh

EXPOSE 22

CMD ["/root/level14.sh"]
