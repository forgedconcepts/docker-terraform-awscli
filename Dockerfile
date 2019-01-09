FROM alpine:3.8

LABEL maintainer="Jerry Warren<jerry@forged-concepts.com>"

# Install needed packages
RUN apk update && \
    apk add --no-cache \
        curl \
        git \
        py2-pip=10.0.1-r0 \
        terraform=0.11.7-r0 \
        zip


# Install awscli
RUN pip install awscli

# Clean up time
RUN apk --purge -v del py-pip
RUN rm /var/cache/apk/*

ENTRYPOINT [ "/bin/sh" ]
