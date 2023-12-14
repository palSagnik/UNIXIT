FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

RUN apk add 7zip
RUN apk add zip

#adding user for the challenge and making their home directory
RUN adduser -h /home/level11 -s /bin/ash -D level11
RUN echo "level11:1dc2a364cbdc0c0e94abfecab2cc43e8" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level11.sh /root/level11.sh
RUN chmod +x /root/level11.sh

#set user working directory
WORKDIR /home/level11
RUN chown root:root -R /home/level11
RUN chmod 555 /home/level11

#cron 
RUN echo '*/15 * * * * root /root/cron.sh'
RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level11.sh"]
