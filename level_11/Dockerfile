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
RUN echo "level9:085956dfcd6d49d45c1516f7771f4659" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level9.sh /root/level9.sh
RUN chmod +x /root/level9.sh

#set user working directory
WORKDIR /home/level9
RUN chown root:root -R /home/level9
RUN chmod 744 /home/level9

EXPOSE 22

CMD ["/root/level9.sh"]
