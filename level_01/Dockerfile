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
RUN adduser -h /home/level1 -s /bin/ash -D level1
RUN echo "level1:085956dfcd6d49d45c1516f7771f4659" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./README.txt /home/level1/README
COPY ./level1.sh /root/level1.sh
RUN chmod +x /root/level1.sh

#set user working directory
WORKDIR /home/level1
RUN chown root:root -R /home/level1
RUN chmod 555 /home/level1

#cron 
RUN echo '*/15 * * * * root  /root/cron.sh' >> /etc/periodic/15min/cron
RUN chmod +x /etc/periodic/15min/cron

EXPOSE 22

CMD ["/root/level1.sh"]
