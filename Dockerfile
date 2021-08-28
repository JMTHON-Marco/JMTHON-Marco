FROM JMTHON-Marco/JMTHON-Marco:latest

#clonning repo
RUN https://github.com/JMTHON-Marco/JMTHON-Marco.git /root/userbot
#working directory
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
