#	create script pro semestralni praci	z bi-xml	#

#	clear vygenerovanych souboru
echo "Mazu soubory ze slozky output.."
rm -rf ./output/*
#	relaxng-check xml souboru vsech zemi
echo "Kontrola xml souboru pomoci relaxng.."
xmllint --noout  --relaxng ./relaxng/validate.rng ./source_xml/*
#	dtd-check xml souboru všech zemí
echo "Kontrola xml souboru pomoci dtd.."
xmllint --noout --dtdvalid ./dtd/single.dtd ./source_xml/*
#	dtd-join xml 
echo "Merge xml souboru pomoci dtd.."
xmllint --dropdtd --noent ./dtd/merge.xml > ./output/project.xml

#	vytvori html pro kazdou zem
echo "Vytvarim html stranky.."

saxon-xslt ./output/project.xml       		./xslt/index.xslt 	  > ./output/index.html
saxon-xslt ./source_xml/uzbekistan.xml 		./xslt/countries.xslt > ./output/uzbekistan.html
saxon-xslt ./source_xml/korea_north.xml 	./xslt/countries.xslt > ./output/north_korea.html
saxon-xslt ./source_xml/somalia.xml 		./xslt/countries.xslt > ./output/somalia.html
saxon-xslt ./source_xml/south_africa.xml 	./xslt/countries.xslt > ./output/south_africa.html
echo "Web vytvoren, hlavni stranka index.html v ./output.."

echo "Vytvarim PDF.."
saxon-xslt ./output/project.xml ./xslt/pdf.xslt > ./output/pdf.fo
fop -r -fo ./output/pdf.fo -pdf ./output/project.pdf

echo "Hotovo.."