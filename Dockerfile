FROM Telethon-Marco/Telethon-Marco:latest

#clonning repo 
RUN git clone https://github.com/Telethon-Marco/Telethon-Marco.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
