//create the madMen database and connect to it
var db = connect('127.0.0.1:27017/facebook'),
    allMadMen = null;

//get a list all databases
dbs = db.adminCommand({listDatabases: 1});

//iterate over all databases
for (i in dbs.databases) {
    //print out the name of each database
    print(i + ' Database: ' + dbs.databases[i].name);
};

//create the names collection and add one document to it
// db.names.insert({'name' : 'Don Draper'});

//set a reference to all documents in the database
allMadMen = db.admin.find();

//iterate the names collection and output each document
while (allMadMen.hasNext()) {
    printjson(allMadMen.next());
};

