#!/bin/bash
echo "Detediendo dockers"
docker stop server01 server02 server03
echo "Dockers detenidos"
echo "----------------------"
echo "Eliminando dockers"
docker rm server01 server02 server03
echo "Dockers eliminados."
echo "----------------------"
echo "Limpieza lista."
echo "----------------------"
echo "Recreando dockers"
./create_dockers.sh server:16.04
ssh -o StrictHostKeyChecking=no root@server01 -p 2221 -i key.private hostname
ssh -o StrictHostKeyChecking=no root@server02 -p 2222 -i key.private hostname
ssh -o StrictHostKeyChecking=no root@server03 -p 2223 -i key.private hostname
echo "Adicionadas las llaves ssh."
echo "----------------------"
echo "Sigue con ansible001"
