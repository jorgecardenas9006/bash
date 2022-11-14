# ! /bin/bash

frontend_postfix="gato"
if [[ ${frontend_postfix} == "co" || ${frontend_postfix} == "global" ]]; then
    echo "FRONTEND POSTFIX CORRECTO ${frontend_postfix}"
else
    echo "FRONTEND POSTFIX INCORRECTO ${frontend_postfix}"
    exit 1
fi
sleep 1
exit 