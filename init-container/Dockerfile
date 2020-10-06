# use az cli container
FROM mcr.microsoft.com/azure-cli

# install kubectl
RUN az aks install-cli

# install helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh

# copy bash script
COPY helm-deploy.sh .
RUN chmod +x helm-deploy.sh

# run the bash script
ENTRYPOINT [ "./helm-deploy.sh" ]