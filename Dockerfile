FROM pulp/pulp-fedora31

# Create and run as pulp user
RUN chgrp -R 0 /etc/pulp /var/lib/pulp /var/lib/pgsql /var/lib/containers && \
    chmod -R g=u /etc/pulp /var/lib/pulp /var/lib/pgsql /var/lib/containers

USER 1001

# # Install prerequesites
# RUN yum install gcc openssl-devel bzip2-devel libffi-devel;

# # Install python3.8
# RUN cd /opt; \
#     wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tgz; \
#     tar xzf Python-3.8.5.tgz; \
#     cd Python-3.8.5; \
#     ./configure --enable-optimizations; \
#     make altinstall; \
#     rm Python-3.8.5.tgz;

# # Install pip3
# RUN dnf install python3-pip;

# # Create a pulp venv
# RUN python3 -m venv pulpvenv; \
#     source pulpvenv/bin/activate;

# # Install pulp using pip
# RUN pip install pulpcore

# # Configure pulp settings
# RUN export PULP_SETTINGS=/etc/pulp/settings.py; \
#     chmod 644 /etc/pulp/settings.py; \
#     chown pulp:pulp /etc/pulp/settings.py;