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
RUN adduser -h /home/level12 -s /bin/ash -D level12
RUN echo "level12:00bbba058fbdcf7ff48dafb2079e4d73" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level12.sh /root/level12.sh
RUN chmod +x /root/level12.sh

#set user working directory
WORKDIR /home/level12
RUN chown root:root -R /home/level12
RUN chmod 555 /home/level12

COPY ./cron.sh /root/cron.sh 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron 
RUN chmod +x /root/cron.sh

EXPOSE 22

CMD ["/root/level12.sh"]
