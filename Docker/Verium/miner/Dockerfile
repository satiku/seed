FROM arm32v7/ubuntu:bionic



RUN apt-get update && apt-get upgrade -y 
RUN apt-get install git automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev binutils  build-essential zlib1g-dev -y  

RUN mkdir ~/verium
RUN git clone https://github.com/effectsToCause/veriumMiner ~/verium/miner
RUN sed -i -e 's/#define SCRYPT_MAX_WAYS 3/#define SCRYPT_MAX_WAYS 1/g' ~/verium/miner/algo/scrypt.c
RUN sed -i -e 's/#define HAVE_SCRYPT_3WAY 1/\/\/#define HAVE_SCRYPT_3WAY 1/g' ~/verium/miner/algo/scrypt.c
RUN sed -i -e 's/#define scrypt_best_throughput() 3/#define scrypt_best_throughput() 1/g' ~/verium/miner/algo/scrypt.c
RUN sed -i -e 's/void scrypt_core_3way/void scrypt_core /g' ~/verium/miner/algo/scrypt.c
RUN sed -i -e 's/-DUSE_ASM -pg/-DUSE_ASM -mfpu=neon -pg/g' ~/verium/miner/build.sh


WORKDIR /root/verium/miner
RUN ./build.sh

ENV MINER_ADDR_NAME VMb6Hge5yitwUrEzeRDzAHTTLTx7syeEYv.ContainerXX

ADD run.sh run.sh
RUN chmod ugo+x run.sh


CMD [ "bash", "run.sh" ]






