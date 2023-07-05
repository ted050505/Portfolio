const express = require('express');
const app = express();

app.listen(13151, function(){
  console.log('Listening at 13151');
  console.log(__dirname);
});

app.get('/',function(req,res){
  res.sendFile(__dirname + '/index.html');
});

app.get('/Portfolio_About.html',function(req,res){
  res.sendFile(__dirname + '/Portfolio_About.html');
});

app.use(express.static('public'));
