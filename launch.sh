#!/bin/bash

# Mata instâncias anteriores do polybar
killall -q polybar

# Aguarda até que as instâncias sejam encerradas
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Inicia o polybar
polybar example &
