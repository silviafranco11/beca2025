//load the express package and create our app
require('dotenv').config();  // Carga las variables de entorno desde el archivo .env

var express    = require('express');        // call express
var app        = express();                 // define our app using express
var bodyParser = require('body-parser');    // get body-parser
var path       = require('path');


// get the http and filesystem modules
var http = require('http');

console.log(process.env.MYSQL_USER);
console.log(process.env.MYSQL_ROOT_PASSWORD);
console.log(process.env.MYSQL_DATABASE);


/*MYSQL connection*/
var connection  = require('express-myconnection'),
    mysql = require('mysql');


app.use(

    connection(mysql,{
        host     : 'localhost',
        user     : process.env.MYSQL_USER,
        password : process.env.MYSQL_ROOT_PASSWORD,
        port : 3307, //port mysql 
        database : process.env.MYSQL_DATABASE, //database name
        timezone: 'utc',
        debug    : true //set true if you wanna see debug logger
    },'request')

);

// APP CONFIGURATION ==================
// ====================================
// use body parser so we can grab information from POST requests
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
// configure our app to handle CORS requests
app.use(function(req, res, next) {
	res.setHeader('Access-Control-Allow-Origin', '*');
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST');
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type, Authorization');
    res.setHeader('Cache-Control', 'no-transform');
	next();
});

app.use(express.static(__dirname + '/public'));

// API ROUTES ------------------------
var apiRoutes = require('./app/routes/api')(app, express);
app.use('/api', apiRoutes);

app.get('*', function(req, res) {
  
    res.sendFile(path.join(__dirname + '/public/views/index.html'));
});

//start the server
app.listen(8080)

// tell us which database are we using
app.get('/checkdb', function (req, res) {
    console.log('La base de datos configurada es: ' + req.mysql.config.database);
    res.send('Conexión a la base de datos exitosa!');
});



// tell ourselves what's happening
console.log('Visit me at http://localhost:8080 or 8081 if alredy in use (check server.js in this case)');
