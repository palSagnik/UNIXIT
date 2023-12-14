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
RUN adduser -h /home/level3 -s /bin/ash -D level3
RUN echo "level3:a19d1c97e52e1bcae4405f9cdb35f3f2" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./README.txt /home/level3/README
COPY ./level3.sh /root/level3.sh
RUN chmod +x /root/level3.sh

#set user working directory
WORKDIR /home/level3
RUN chown root:root -R /home/level3
RUN chmod 555 /home/level3

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
#RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level3.sh"]
