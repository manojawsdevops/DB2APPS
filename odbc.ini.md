;#######################################
;#### List of data sources stanza ######
;#######################################
[ODBC Data Sources]
EIDIKO=IBM DB2 ODBC Driver
DSN1=DataDirect ODBC Oracle Wire Protocol
;###########################################
;###### Individual data source stanzas #####
;###########################################
;# DB2 stanza
[localS]
DRIVER=/home/aceuser/db2cli_odbc_driver/odbc_cli/clidriver/lib/libdb2o.so
Description=IBM DB2 ODBC Database
Database=EIDIKO
;##########################################
;###### Mandatory information stanza ######
;##########################################

;# Oracle stanza
[DSN1]
Driver=/opt/ibm/ace-11/server/ODBC/drivers/lib/UKora95.so
Description=DataDirect ODBC Oracle Wire Protocol
HostName=192.168.3.160
PortNumber=1521
ServiceName=xe
CatalogOptions=0
EnableStaticCursorsForLongData=0
ApplicationUsingThreads=1
EnableDescribeParam=1
OptimizePrepare=1
WorkArounds=536870912
ProcedureRetResults=1
ColumnSizeAsCharacter=1
LoginTimeout=0
EnableNcharSupport=0
;# Uncomment the next setting if you wish to use Oracle TIMESTAMP WITH TIMEZONE columns
;# EnableTimestampwithTimezone=1
