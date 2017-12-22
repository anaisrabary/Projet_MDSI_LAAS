#!/bin/bash

echo ""
echo "-----------------------------------------------------"
echo "---- Lancement de la validation des fichiers xml ----"
echo "-----------------------------------------------------"
echo ""

echo "" > valid.out
echo $(date) >> valid.out

for file in $(find *.xml | grep -E "^[^_]" | sed -r "s/([a-z]+).xml/\1/g")
do
	if [ $file != "empty" ]
	then
		echo ">>> ask to valid :" $file
		echo "" >> valid.out
		echo "xmllint --noout --schema XSD/$file.xsd $file.xml" >> valid.out
		xmllint --noout --schema XSD/$file.xsd $file.xml 2>> valid.out
	fi
done

echo ""
echo "-----------------------------"
echo "---- Validation terminee ----"
echo "-----------------------------"
echo ""
echo "Trace dans le fichier \"valid.out\""
echo ""
