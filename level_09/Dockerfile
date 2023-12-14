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
RUN adduser -h /home/level9 -s /bin/ash -D level9
RUN echo "level9:1aadd06fb92b0b7fbeb1a867a67632c0" | chpasswd

#banner
COPY ./rickroll_4k.jpg ./root/rickroll_4k.jpg
COPY ./flag.py /root/flag.py
COPY ./level9.sh /root/level9.sh
RUN chmod +x /root/level9.sh

#set user working directory
WORKDIR /home/level9
RUN chown root:root -R /home/level9
RUN chmod 555 /home/level9

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
#RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level9.sh"]
