# ArgoCD Demo Apps

The manifests in this directory are Argo Applications

## Onboarding an Argo Application to openshift-testbed

1. Create an Argo Application and place it in one of the directories `backend`, `cluster-config`, `dev`, `operators`

1. Modify the kustomization.yaml to include your new Argo Application under the `resources` section

example:
```
resources:
- amq-broker-service.yaml
- strimzi-kafka-service.yaml
- <new app here>.yaml
```

1. Replace your application name in the patch below. Copy the patch below to the end of the `kustomization.yaml`. This will allow others to fork this repository and still demonstrate gitops capabilities for the patched applications
```
patchesJson6902:
- target:
    group: argoproj.io
    version: v1alpha1
    kind: Application
    name: <argo application name here>
    namespace: argocd
  path: meta/patches/github-username-patch.yaml
  ```