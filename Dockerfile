FROM biansepang/weebproject:buster

#clonning repo 
RUN git clone -b Man-Userbot https://github.com/lunatic0der/Man-Userbot /home/man-userbot/ \
    && chmod 777 /home/man-userbot \
    && mkdir /home/man-userbot/bin/

#working directory 
WORKDIR /home/man-userbot/

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="WORKDIR /home/man-userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
