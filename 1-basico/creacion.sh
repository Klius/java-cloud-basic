# MAVEN
# Ayuda a automatizar:
#   La creación
#   Gestiona dependencias: librerias externas
#   La compilación/empaquetado del proyecto
#   Automatización de pruebas

#instalamos maven
sudo apt update && sudo apt install maven -y

#Crea un proyecto llamado proyectoWEB siguiendo la plantilla webapp
mvn archetype:generate \
-DarchetypeArtifactId=maven-archetype-webapp \
-DarchetypeVersion=1.4 \
-DgroupId=com.curso \
-DartifactId=proyectoWEB \
-DinteractiveMode=false 
