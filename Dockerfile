FROM pulp/pulp-fedora31

RUN useradd -u -g admin root

USER admin