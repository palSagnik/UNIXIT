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
RUN adduser -h /home/level8 -s /bin/ash -D level8
RUN echo "level8:cf250e3ae57c2d2827963733482b2c3c" | chpasswd

#banner
COPY ./process.py ./root/process.py
COPY ./flag.py /root/flag.py
COPY ./level8.sh /root/level8.sh
RUN chmod +x /root/level8.sh

#set user working directory
WORKDIR /home/level8
RUN chown root:root -R /home/level8
RUN chmod 555 /home/level8

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron

EXPOSE 22

CMD ["/root/level8.sh"]
