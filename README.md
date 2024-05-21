# argostart

This Helm Chart helps you deploy the first ArgoCD Application to setup AppOfApps and AppOfAppSets patterns.

The helm chart will create:

  * Kubernetes **Secret** to rename the **in-cluster** name to what you want.
  * Kubernetes **Secret** to add Git credentials to allow ArgoCD access to GitOps repositories.
  * ArgoCD **AppProject** to separate platform deployment from other projects.
  * ArgoCD **Application** to deploy AppOfApps/AppOfAppSets from the GitOps repository.

## Git Credentials:

This Helm chart supports two ways of pushing Git credentials into the cluster to be used by ArgoCD for deployments.

  1. Kubernetes-native Secret: This be done using native secret and you must feed it using override values.
  2. External-Secrets Secret: This be done using External-Secrets operator and supports AWS Secrets Manager and Azure Key Vault. For AWS you need to setup IRSA and for Azure you need to setup Workload Identity to use ExternalSecret type.

## Where to host this Helm chart?

As this helm chart will be the first resource in your ArgoCD environment, and there are no Git credentials in your cluster, before deploying it, it must be hosted in a public repo like this. You can also fork it in your GitHub account use it from your own public address.

## Helm Chart Values:

See **values.yaml** file to learn more about parameters available to override. If you think more things must be overridable, please make the change and open a pull request.

## How to deploy:

Clone the repo into your system and run the following command:

```bash
helm install thecrown ./argostart -n argocd -f override-values.yaml
```

## Copyright:

Apache 2.0 licensed project. It can be used commercially in any way.

Copyright &copy; 2024 Saeid Bostandoust <ssbostan@yahoo.com>
