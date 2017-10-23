ARG UBUNTU_VERSION
FROM lukaswhl/lmms-ci-linux:${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y    \
	ccache                                  \
	gcc-multilib                            \
	g++-multilib                            \
&& rm -rf /var/lib/apt/lists/*
