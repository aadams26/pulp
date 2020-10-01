FROM pulp/pulp-fedora31

RUN useradd -u 8877 admin

USER admin