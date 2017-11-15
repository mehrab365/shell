#!/bin/ksh

#mongo ##show dbs --eval "db.satus()" # "show dbs" #--eval "printjson(db.serverStatus())"

#mongo 127.0.0.1:27017/facebook --eval "db.serverStatus()"
#print ${db.getName}

mongo mongo_shell.js