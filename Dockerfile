FROM python:latest

# Installing Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages
RUN pip3 install -U pip

# Copying Requirements
COPY Installer /Installer

# Installing Requirements
RUN cd /
RUN pip3 install --no-cache-dir --upgrade -r Installer

RUN mkdir /txttest2.0
WORKDIR /txttest2.0

# Running MessageSearchBot
CMD ["python", "bot.py"]
