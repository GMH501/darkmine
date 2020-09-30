# Getting Started

```
oc create serviceaccount darkmine
oc adm policy add-scc-to-user anyuid -z darkmine
```

Di seguito invece un esempio in cui viene processato il templato e contestualmente passati i parametri per la creazione delle risorse:
```
root@CPX-LWJVWNZM3LC:~/CDS# oc process -f darkmine-template.yaml  -p DC_NAME=redmine DB_NAME=redmine DB_USER=redmine DB_PASSWORD=secret DB_SIZE=2 STORAGE_CLASS=gp2 | oc create -f -
```
