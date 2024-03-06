var bodyParser = require('body-parser');  // get body-parser
var jwt = require('jsonwebtoken'); // para trabajar el token
var fs = require('fs');
var multipart = require('connect-multiparty');
var multipartMiddleware = multipart();

module.exports = function (app, express) {

  var apiRouter = express.Router();

  apiRouter.route('/areas')
  .get(function (req, res, next) {
    req.getConnection(function (err, conn) {
      if (err) {
        console.log(err);
        return next("Cannot Connect")
      };
      //not sure if this is the right way to do it
      var query = conn.query('SELECT * FROM areas', function (err, areas) {
        if (err) {
          console.log(err);
          return next("Mysql error, check your query");
        }

        res.json(areas);
      });
    });
  })

  apiRouter.route('/lineas')
  .get(function (req, res, next) {
    req.getConnection(function (err, conn) {
      if (err) return next("Cannot Connect");

      var query = conn.query('SELECT * FROM lineas',function (err, lineas) {
        if (err) {
          console.log(err);
          return next("Mysql error, check your query");
        }

        res.json(lineas);
      });
    });
  })

  apiRouter.route('/centros')
  .get(function (req, res, next) {
    req.getConnection(function (err, conn) {
      if (err) return next("Cannot Connect");

      var query = conn.query('SELECT * FROM centros a JOIN relCentros b ON a.centroId=b.centroId', function (err, centros) {
        if (err) {
          console.log(err);
          return next("Mysql error, check your query");
        }

        res.json(centros);
      });
    });
  })

  apiRouter.route('/eelisas')
  .get(function (req, res, next) {
    req.getConnection(function (err, conn) {
      if (err) return next("Cannot Connect");

      var query = conn.query('SELECT * FROM EELISA a JOIN relEELISA b WHERE a.eelisaId=b.eelisaId', function (err, eelisas) {
        if (err) {
          console.log(err);
          return next("Mysql error, check your query");
        }

        res.json(eelisas);
      });
    });
  })
    
  return apiRouter;
};