var ElizaBot = require('../src/elizabot');
var EventEmitter = require('events').EventEmitter;
var readline = require('readline');
var async = require('async');
var util = require('util');

function Session () {
  var eliza = new ElizaBot();
  var reply = eliza.transform(process.argv[2]);
  console.log(reply);
}


module.exports = Session;
