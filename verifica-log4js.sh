#!/bin/bash

	
echo -e "\e[92mIncepere Scanare log4js"
echo -e "\e[92mVerificam daca exita libraria log4js"
 find / -name log4j*.jar
 dpkg -l | grep liblog4j
 dpkg -l | grep log4
 echo -e "\e[92mVerificam tentative hack cu log4js"
 egrep -I -i -r '\$(\{|%7B)jndi:(ldap[s]?|rmi|dns|nis|iiop|corba|nds|http):/[^\n]+' /var/log - string cautare log-uri pt log4j

while true; do
read -rsn1 input
if [ "$input" = "x" ]; then
    echo "Bye Bye!"
fi
done


 
