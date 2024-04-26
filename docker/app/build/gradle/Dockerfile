FROM gradle:7.6-jdk17

WORKDIR /home/astarion

COPY data/entrypoint.layer.sh /entrypoint.sh
COPY data/application.yml /application.yml
COPY data/internal.jar /internal.jar

ENTRYPOINT [ "/entrypoint.sh" ]
