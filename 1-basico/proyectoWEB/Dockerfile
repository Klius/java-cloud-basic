FROM bitnami/git AS clonador

RUN git clone https://github.com/Klius/java-cloud-basic.git /tmp/proyecto


 # Maven ya lleva git por lo que el clonador no seria necesario
FROM maven:3.8.6-jdk-11 AS empaquetador 



RUN mkdir /miproyecto

# la carpeta miproyecto esta dentro del empaquetador

COPY --from=clonador /tmp/proyecto /miproyecto 

# generamos el WAR

RUN cd /miproyecto/proyectos/1-basico/proyectoWEB && mvn package 

FROM docker.io/bitnami/tomcat:10

#Copiamos el war a la ruta para que haga el despiegue en auto
COPY --from=empaquetador  /miproyecto/proyectos/1-basico/proyectoWEB/target/proyectoWEB.war /opt/bitnami/tomcat/webapps
COPY ./tomcat.conf.xml /opt/bitnami/tomcat/conf/server.xml