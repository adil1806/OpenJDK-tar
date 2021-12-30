FROM ubuntu

LABEL owner="khanadil" \
      maintainer="khanabdullahadil@gmail.com" \
      release-date="30/12/2021" \
      version="0.0.1" 
#ENV TZ=Europe/Kiev
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG SOURCE_PATH=script
ARG TARGET_PATH=/opt

#Installing all required utilities and doing some cleaning.
RUN apt update \
    && apt install -y  \
       git \
       zsh \
       wget \
       vim \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

#This install.sh file is to install ohmyzsh and this is custom by disabling the user propmt.
#.zshrc is also pre configured file
#Just copying both in /opt directory.
COPY ${SOURCE_PATH}/install.sh ${SOURCE_PATH}/.zshrc ${TARGET_PATH}/
#Running installer script for ohmyzsh.
RUN ${TARGET_PATH}/install.sh 
#Here cloning repo for autosuggestions and syntax highlighting.
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#Removig the older .zshrc file
RUN rm ~/.zshrc 
#Replacing the .zshrc from /opt to home.
RUN cp ${TARGET_PATH}/.zshrc ~/

