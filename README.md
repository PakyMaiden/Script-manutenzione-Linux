# Script manutenzione Linux

Un semplice script per eseguire vari processi di manutenzioni in uno, utilizzo Debian e a volte è noioso effettuare aggiornamenti in particolare perchè la componente grafica non mostra sempre gli aggiornamenti disponibili.

Questo script fa le seguenti cose:

  1. Aggiorna la lista dei pacchetti.
  2. Aggiorna i pacchetti installati.
  3. Rimuove pacchetti obsoleti (autoremove).
  4. Pulisce la cache dei pacchetti.
  5. Pulizia dei log vecchi di 30 giorni.

Lo script va bene per Debian e derivate (Ubuntu, Mint, ecc...)

**Utilizzo:**
1. Rendere eseguibile lo script: chmod +x manutenzione.sh
2. Esecuzione: sudo ./manutenzione.sh
