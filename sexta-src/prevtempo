#!/bin/bash


mensagem_tempo=""
JSONFILE="/tmp/${0##*/}.tmp.json"

DIA_SEMANA=$(date +%A)
DIA=$(date +%d)
MES=$(date +%B)
ANO=$(date +%Y)


function comando_tempo() {

  cleanup

  curl -s "http://apiadvisor.climatempo.com.br/api/v1/weather/locale/4290/current?token=32e6ad73da4248ca01a2d358d796b5dc" > $JSONFILE

  tempo_graus=$(jq ".data .temperature" <"${JSONFILE}")
  cond_tempo=$(jq ".data .condition" <"${JSONFILE}")

  mensagem_tempo=$(echo "A temperatura atual é de $tempo_graus graus a condição do tempo para hoje é $cond_tempo." | tr -d '""')

  echo $mensagem_tempo
}

function cleanup() {
    rm -rf $JSONFILE
    rm -rf $JSONFILE.part
}

comando_tempo



