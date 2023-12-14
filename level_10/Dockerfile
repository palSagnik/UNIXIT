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
RUN adduser -h /home/level10 -s /bin/ash -D level10
RUN echo "level10:c449b208a248e144a48aad743dc38796" | chpasswd

#banner
COPY ./old_flag ./home/level10/old_flag
COPY ./new_flag ./home/level10/new_flag
COPY ./flag.py /root/flag.py
COPY ./level10.sh /root/level10.sh
RUN chmod +x /root/level10.sh

#set user working directory
WORKDIR /home/level10
RUN chown root:root -R /home/level10
RUN chmod 555 /home/level10

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron 
RUN chmod +x /root/cron.sh

EXPOSE 22

CMD ["/root/level10.sh"]
