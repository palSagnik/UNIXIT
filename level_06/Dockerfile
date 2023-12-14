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
RUN adduser -h /home/level6 -s /bin/ash -D level6
RUN echo "level6:876352fef9abafe435759c71f8f69802" | chpasswd

#banner
COPY ./grep.zip /root/grep.zip
COPY ./flag.py /root/flag.py
COPY ./level6.sh /root/level6.sh
RUN chmod +x /root/level6.sh

#set user working directory
WORKDIR /home/level6
RUN chown root:root -R /home/level6/
RUN chmod 555 -R /home/level6

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron

EXPOSE 22

CMD ["/root/level6.sh"]
