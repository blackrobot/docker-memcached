# Pull base image.
FROM damon/base

# Install Memcached
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yqq memcached libmemcached-dev

# Amount of memory to use
ENV MEMORY_RESERVE 512

# Expose the memcached port
EXPOSE 11211

CMD /usr/bin/memcached -v -p 11211 -u nobody -m $MEMORY_RESERVE
