var mysql = require('mysql');

var conexion = mysql.createConnection({
    multipleStatements: true,
    host:'localhost',
    user:'root',
    password:'',
    database:'tp'
    
});

conexion.connect((error)=> {
    if(error){
        console.log(error);
    } else {
        console.log("Conectado")
    }
})

module.exports = conexion;