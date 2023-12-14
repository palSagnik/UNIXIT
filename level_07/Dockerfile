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
RUN adduser -h /home/level7 -s /bin/ash -D level7
RUN echo "level7:bba16aadca370fdebbef7f361f886141" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level7.sh /root/level7.sh
RUN chmod +x /root/level7.sh

#set user working directory
WORKDIR /home/level7
RUN chown root:root -R /home/level7
RUN chmod 555 /home/level7

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron && chmod +x /root/cron.sh

EXPOSE 22

CMD ["/root/level7.sh"]
