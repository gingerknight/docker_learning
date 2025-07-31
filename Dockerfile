FROM debian:stable-slim

# COPY source destination
COPY docker_learning /bin/docker_learning

ENV PORT=8991

CMD ["/bin/docker_learning"]

