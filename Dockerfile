FROM ubuntu:16.04

# Install bitcoind from PPA
RUN apt-get update && apt-get install --yes software-properties-common \
	&& add-apt-repository --yes ppa:bitcoin/bitcoin \
	&& apt-get update \
	&& apt-get install --yes bitcoind

COPY ./bitcoin.conf /root/.bitcoin/bitcoin.conf

WORKDIR ~

EXPOSE 8332 8333 18332 18333

CMD ["bitcoind", "-printtoconsole"]

