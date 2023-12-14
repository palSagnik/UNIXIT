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
RUN adduser -h /home/level15 -s /bin/ash -D level15
RUN echo "level15:7f1331a129c74e3ec5cefc2289017b48" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level15.sh /root/level15.sh
RUN chmod +x /root/level15.sh

#set user working directory
WORKDIR /home/level15
RUN chown root:root -R /home/level15
RUN chmod 555 /home/level15

#cron 
RUN echo '*/15 * * * * root /root/cron.sh'
RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level15.sh"]
