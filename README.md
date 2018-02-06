#Deployed as ROOT.war

1. http://public.seqdb.se/
2. http://public.seqdb.se/?filter[species]=arctos
3. http://public.seqdb.se/?filter[locality]=str%C3%B6msund&filter[species]=arctos&sort[field]=collectionInfo.formattedDate&sort[order]=asc


# Testing (tomcat as is, mysql in a db)


mysql running in a container, exposing  port 13360
$ mysql --host=localhost --port=13360 --user=brf --password=xxxxx seqdbweb


# tomcat context.xml , jdbc/TestDB set 
Tomcat version = apache-tomcat-8.0.27 

<Resource name="jdbc/TestDB" 
                auth="Container" type="javax.sql.DataSource"
                maxActive="100" maxIdle="30" maxWait="10000"
                validationQuery="SELECT 1"
                testOnBorrow="true"
                username="brf" password="brf" driverClassName="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost:13306/seqdbweb"/>

bin/shutdown.sh 
bin/startup.sh

