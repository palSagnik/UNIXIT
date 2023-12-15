FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

RUN apk add zip

#adding user for the challenge and making their home directory
RUN adduser -h /home/level18 -s /bin/ash -D level18
RUN echo "level18:43b5de615eb2190658c1da73436f2b6d" | chpasswd

COPY ./flag.py /root/flag.py
COPY ./level18.sh /root/level18.sh
RUN chmod +x /root/level18.sh

COPY ./cron.sh /root/cron.sh 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron 
RUN chmod +x /root/cron.sh

#set user working directory
WORKDIR /home/level18
RUN chown root:root -R /home/level18
RUN chmod 555 /home/level18

EXPOSE 22

CMD ["/root/level18.sh"]
