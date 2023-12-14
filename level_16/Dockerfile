FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
#RUN apk add rbash
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

#adding user for the challenge and making their home directory
RUN adduser -h /home/level16 -s /bin/ash -D level16
RUN echo "level16:834c2f7cc3b7a98c17524d84fac67ccd" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level16.sh /root/level16.sh
RUN chmod +x /root/level16.sh
#RUN ln -s /bin/ash /bin/rbash

#set user working directory
WORKDIR /home/level16
RUN chown root:root -R /home/level16
RUN chmod 555 /home/level16

#cron 
RUN echo '*/15 * * * * root /root/cron.sh'
RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level16.sh"]
