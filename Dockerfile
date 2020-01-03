FROM frolvlad/alpine-python3

RUN apk add -U --no-cache py3-setuptools build-base libffi-dev openssl-dev bzip2-dev python3-dev && \
    pip3 install twine

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["sh","/entrypoint.sh"]

