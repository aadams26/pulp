FROM pulp/pulp-fedora31

RUN useradd admin; usermod -aG wheel admin;

USER admin