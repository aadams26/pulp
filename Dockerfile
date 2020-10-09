FROM pulp/pulp-fedora31

# Update configuration
RUN echo "CONTENT_ORIGIN='http://pulp.apps.openshift.dhsie.hawaii.gov:8080' \
    ANSIBLE_API_HOSTNAME='http://pulp.apps.openshift.dhsie.hawaii.gov:8080' \
    ANSIBLE_CONTENT_HOSTNAME='http://pulp.apps.openshift.dhsie.hawaii.gov:8080' \
    TOKEN_AUTH_DISABLED=True" >> settings.py
