#!/bin/bash

 find / -name log4j*.jar
 dpkg -l | grep liblog4j
 dpkg -l | grep log4
 echo "Verificam loguri pentru incercari exploit log4js:\n"
 egrep -I -i -r '\$(\{|%7B)jndi:(ldap[s]?|rmi|dns|nis|iiop|corba|nds|http):/[^\n]+' /var/log 

while true; do
read -rsn1 input
if [ "$input" = "x" ]; then
    echo "Bye Bye!"
    exit
fi
done


 
