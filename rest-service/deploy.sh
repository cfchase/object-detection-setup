#!/usr/bin/env bash
printf "\n\n######## deploy object detection rest service ########\n"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


oc project ${OC_PROJECT} 2> /dev/null || oc new-project ${OC_PROJECT}
oc project
oc apply -f "${DIR}/app.yaml"


#oc new-app python:3.8-ubi8~https://github.com/csds-bu/object-detection-rest.git \
#-l 'app.kubernetes.io/component=object-detection-rest' \
#-l 'app.kubernetes.io/instance=object-detection-rest' \
#-l 'app.kubernetes.io/part-of=object-detection-rest'
#
#
#oc expose svc/object-detection-rest \
#-l 'app.kubernetes.io/component=object-detection-rest' \
#-l 'app.kubernetes.io/instance=object-detection-rest' \
#-l 'app.kubernetes.io/part-of=object-detection-rest'
