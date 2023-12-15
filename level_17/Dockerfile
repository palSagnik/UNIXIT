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
RUN adduser -h /home/level17 -s /bin/ash -D level17
RUN echo "level17:8f73d1695b9856a15b12e1a87e6d4682" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level17.sh /root/level17.sh
RUN chmod +x /root/level17.sh

#set user working directory
WORKDIR /home/level17
RUN chown root:root -R /home/level17
RUN chmod 555 /home/level17

COPY ./cron.sh /root/cron.sh 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron 
RUN chmod +x /root/cron.sh

EXPOSE 22

CMD ["/root/level17.sh"]
