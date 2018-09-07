FROM debian:stretch

#Covering JE-42390
RUN groupadd jelastic_qa && \
    useradd -s /usr/sbin/nologin -g jelastic_qa jelastic_qa

ADD Jel_QA_Test_File.txt /var/log/Jel_QA_Test_File.txt

USER jelastic_qa
CMD ["cat", "/var/log/Jel_QA_Test_File.txt"]
