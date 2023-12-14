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
RUN adduser -h /home/level20 -s /bin/ash -D level20
RUN adduser -s /bin/ash -D level21
RUN echo "level20:80716be005c987a3675c512e5d0ce123" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level20.sh /root/level20.sh
COPY ./cronjob_level21.sh /root/cronjob_level21.sh
RUN chmod +x /root/level20.sh

#set user working directory
WORKDIR /home/level20
RUN chown root:level21 -R /home/level20
RUN chmod 555 /home/level20

#cron 
RUN echo '*/2 * * * * level21 /usr/bin/cronjob_level21.sh &> /dev/null'
RUN echo '*/15 * * * * root /root/cron.sh'
RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level20.sh"]
