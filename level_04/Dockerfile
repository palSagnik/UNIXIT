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
RUN adduser -h /home/level4 -s /bin/ash -D level4
RUN echo "level4:775f33c9adfee012c2cb7f099d88d007" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./README.txt /home/level4/README
COPY ./level4.sh /root/level4.sh
RUN chmod +x /root/level4.sh

#set user working directory
WORKDIR /home/level4
RUN chown root:root -R /home/level4
RUN chmod 555 /home/level4

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
#RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level4.sh"]
