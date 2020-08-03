# openshift-testbed-apps
 
## GitOps Structure
Following a GitOps folder structure suggested by the Red Hat Canada Cloud SA team which has excellent guidance for GitOps principles
(https://github.com/gnunn-gitops/standards/blob/master/folders.md)

## What is Kustomize?
kustomize. Kustomize is built into Kubernetes as of 1.14 which means there is full support for it in your kubernetes or OpenShift environment out of the box. Kustomize is not a templating framework, it is a patching framework that works through the concept of inheritance. Bases define the base level yaml for an application and overlays inherit from those bases or other overlays with patches to differentiate as needed.

Since kustomize doesn't use templating it's very easy to follow and understand what it is doing keeping initial complexity low. However because it relies on inheritance getting a structure that works for your team can be an involved process.
(Source: https://github.com/gnunn-gitops/standards/blob/master/tools.md)

## Where can I learn more about Kustomize?
I personally have found the official documentation on kustomize to be very helpful to understand
(https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/)

### Define App Folder Structure
- Dev - Elevated security/permissions
- Test - Restricted security/permissions
- Prod - Fully controlled by pipeline process