FROM pulp/pulp-fedora31

RUN export PULP_SETTINGS=/etc/pulp/settings.py

# Update configuration
RUN echo "CONTENT_ORIGIN='http://pulp.apps.openshift.dhsie.hawaii.gov:8080' \
    ANSIBLE_API_HOSTNAME='http://pulp.apps.openshift.dhsie.hawaii.gov:8080' \
    ANSIBLE_CONTENT_HOSTNAME='http://pulp.apps.openshift.dhsie.hawaii.gov:8080' \
    TOKEN_AUTH_DISABLED=True" >> /etc/pulp/settings.py
