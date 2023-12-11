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
RUN adduser -h /home/level2 -s /bin/ash -D level2
RUN echo "level2:085956dfcd6d49d45c1516f7771f4659" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./README.txt /home/level2/README
COPY ./level2.sh /root/level2.sh
RUN chmod +x /root/level2.sh

#set user working directory
WORKDIR /home/level2
RUN chown level2:level2 -R /home/level2
RUN chmod 444 /home/level2

EXPOSE 22

CMD ["/root/level2.sh"]
