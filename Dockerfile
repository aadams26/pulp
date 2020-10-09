FROM pulp/pulp-fedora31

# Update configuration
RUN echo "CONTENT_ORIGIN='http://$(hostname):8080' \
    ANSIBLE_API_HOSTNAME='http://$(hostname):8080' \
    ANSIBLE_CONTENT_HOSTNAME='http://$(hostname):8080/pulp/content' \
    TOKEN_AUTH_DISABLED=True" >> settings/settings.py
