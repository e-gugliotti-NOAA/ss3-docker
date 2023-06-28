FROM rocker/rstudio

RUN sudo apt-get update && sudo apt-get install -y \
    make \
    gcc \
    g++ \ 
    cmake \
    clang \ 
    git \
&& sudo apt-get clean \
&& sudo rm -rf /var/lib/apt/lists/

RUN R -e "install.packages('pak')" \
&& R -e "R -e "install.packages('dplyr')" \
&& R -e "R -e "install.packages('ggplot2')" \
&& R -e "pak::pkg_install("r4ss/r4ss")" \
&& R -e "pak::pkg_install("ss3sim/ss3sim")" \

RUN wget -O ss https://github.com/nmfs-stock-synthesis/stock-synthesis/releases/latest/download/ss_linux \
&& sudo chmod a+x ss

RUN R -e "getwd()"

## && wget https://github.com/nmfs-stock-synthesis/user-examples/archive/refs/heads/main.zip
## && sudo unzip main.zip
## && sudo chmod a+x user-examples-main
## && sudo mv user-examples-main/model_files model_files
## && sudo chmod 777 model_files
## && sudo rm -r -f user-examples-main
## && sudo rm -r -f main.zip
## && find model_files/* -type d -exec cp ss {} \;

## COPY . /home/rstudio/

## WORKDIR /home/rstudio
