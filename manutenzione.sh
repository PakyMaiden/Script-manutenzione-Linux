#!/bin/bash

# Script di manutenzione per Debian/Ubuntu
# Deve essere eseguito con privilegi di root

# Colori per output leggibile
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}[1/5] Aggiornamento lista pacchetti...${NC}"
apt update

echo -e "${GREEN}[2/5] Aggiornamento pacchetti installati...${NC}"
apt upgrade -y

echo -e "${GREEN}[3/5] Rimozione pacchetti non più necessari...${NC}"
apt autoremove -y

echo -e "${GREEN}[4/5] Pulizia cache dei pacchetti...${NC}"
apt autoclean -y

echo -e "${GREEN}[5/5] Pulizia dei log più vecchi di 30 giorni in /var/log...${NC}"
find /var/log -type f -mtime +30 -delete

echo -e "${GREEN}✅ Manutenzione completata con successo.${NC}"
