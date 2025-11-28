#!/bin/bash

# Directory sorgente (alberatura da cui partire)
 SRC_DIR="$1"

 # Directory destinazione
 DEST_DIR="$2"

 # Crea la directory destinazione se non esiste
 mkdir -p "$DEST_DIR"

 # Trova i file immagine ed escludi quelli con "x" nel nome
 find "$SRC_DIR" \
   -type f \
     \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.webp" -o -iname "*.tiff" \) \
       ! -iname "*x*" \
         -exec cp {} "$DEST_DIR" \;

         echo "Copia completata!"         
