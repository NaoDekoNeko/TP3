@echo off
set SaxonPath=C:\SaxonHE12-4J\saxon-he-12.4.jar
set ListaPath="C:\Users\adfat\OneDrive\Desktop\TopicosIII\XSLT\src\lista.xml"
set XSLTPath=C:\Users\adfat\OneDrive\Desktop\TopicosIII\XSLT\src\lista.xsl
set SalidaPath=C:\Users\adfat\OneDrive\Desktop\TopicosIII\XSLT\data\output.xml

java -jar "%SaxonPath%" -s:%ListaPath% -xsl:%XSLTPath% -o:%SalidaPath%

echo Transformación completada. Verifica el archivo output.xml.
pause
