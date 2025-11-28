# images-extractor
This script extracts all opf images from one directory scanning recursively all of the directory tree


## What it does

find "$SRC_DIR" → scansiona tutte le sottocartelle.

-type f → considera solo i file.

( -iname "*.jpg" -o ... ) → filtra per estensioni immagine.

! -iname "*x*" → esclude file che contengono “x” nel nome (maiuscole/minuscole non contano).

-exec cp {} "$DEST_DIR" \; → copia i file selezionati.

## How to use it

bash images_extractor.sh /source/directory /destination/directory
