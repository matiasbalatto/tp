var express = require('express');
var router = express.Router();
var router2 = express.Router();
var bd = require('./BD/bd');



router.get('/',(req,res,next)=>{

  bd.query('select * from categorias; select * from productos', [0, 1], function(err, results) {
      if (err) throw err;
    
      // console.log("estas son las categorias:")
      // console.log(results[0]);
      // console.log("estos son los productos:")
      // console.log(results[1]);

      res.status(200).send(results); 
    });

});

module.exports = router;
