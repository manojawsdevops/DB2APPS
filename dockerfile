ARG BASE_IMAGE=ibmcom/ace-mqclient:11.0.0.6-amd64
FROM $BASE_IMAGE
USER root
RUN mkdir -p /home/aceuser/db2cli_odbc_driver
COPY ibm_data_server_driver_for_odbc_cli_linuxx64_v11.5.tar.gz /home/aceuser/db2cli_odbc_driver
WORKDIR /home/aceuser/db2cli_odbc_driver
RUN tar -xvzf ibm_data_server_driver_for_odbc_cli_linuxx64_v11.5.tar.gz
RUN rm ibm_data_server_driver_for_odbc_cli_linuxx64_v11.5.tar.gz
USER aceuser
ENV ODBCINI /home/aceuser/initial-config/odbcini/odbc.ini
ENV ODBCSYSINI /home/aceuser/initial-config/odbcini/
ENV DB2CLIINIPATH /home/aceuser/initial-config/odbcini/
ENV LD_LIBRARY_PATH /home/aceuser/db2cli_odbc_driver/odbc_cli/clidriver/lib
ENV IE02_PATH=/opt/IBM/ace-11.0.0.6/ie02
WORKDIR /home/aceuser
USER aceuser
COPY DBdataUsingHttp-1.bar /home/aceuser/initial-config/bars/
COPY initial-config/odbcini/* /home/aceuser/initial-config/odbcini/
COPY setdbparms.txt /home/aceuser/initial-config/setdbparms/
#COPY initial-config/policy/* /home/aceuser/initial-config/policy/
#COPY initial-config/serverconf/* /home/aceuser/ace-server/overrides/server.conf.yaml
#EXPOSE 9997
ENV ODBCSYSINI /home/aceuser/initial-config/odbcini/
WORKDIR /home/aceuser
USER root
RUN chown -R aceuser:aceuser /home/aceuser/ 
RUN chmod -R 777 /home/aceuser/
USER aceuser
