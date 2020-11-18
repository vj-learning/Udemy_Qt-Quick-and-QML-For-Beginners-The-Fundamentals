function dbInit() {
    console.log("Database is initializing ...")

    db = LocalStorage.openDatabaseSync("sqllitedemodb","0.1","DB to store setting in sql lite db",100000)

    // create table to store data
    db.transaction(function(tx) {
        // Create the database if it doesn't already exist
        tx.executeSql('CREATE TABLE IF NOT EXISTS sqlitedemotable(name TEXT, value TEXT)');
    })
}

function storeData(){
    console.log("Storing data ...")

    if(!db){
        return
    }

    db.transaction(function(tx){
        var result = tx.executeSql('SELECT * FROM sqlitedemotable WHERE name="p17demo"')

        var obj ={
            x : window.x,
            y : window.y,
            width : window.width,
            height : window.height,

            colorR : rootRectId.color.r,
            colorG : rootRectId.color.g,
            colorB : rootRectId.color.b
        }

        if(result.rows.length === 1){
            console.log("updating entry in sqllite table")

            tx.executeSql('UPDATE sqlitedemotable SET value=? WHERE name="p17demo"',JSON.stringify(obj))
        }
        else{
            console.log("add new entry in sqlitedemotable...")

            tx.executeSql('INSERT INTO sqlitedemotable VALUES (?,?)',['p17demo',JSON.stringify(obj)])
        }
    })
}

function readData(){
    console.log("Reading data ...")

    if(!db){
        return
    }

    db.transaction(function(tx){
        console.log("Reading data from sqllite table ...")

        var result = tx.executeSql('SELECT * FROM sqlitedemotable WHERE name="p17demo"')

        if(result.rows.length === 1){
            console.log("parse the parameter from value string ...")

            var obj = JSON.parse(result.rows[0].value)

            window.x = obj.x
            window.y = obj.y
            window.width = obj.width
            window.height = obj.height
            rootRectId.color.r = obj.colorR
            rootRectId.color.g = obj.colorG
            rootRectId.color.b = obj.colorB

            console.log("Properties have been set accoring to db values")
        }
        else{
            console.log("No entry found in sqlitedemotable...")
        }
    })
}
