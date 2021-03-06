// Generated by CoffeeScript 1.7.1
'use strict';
var connect, mpath;

connect = require('connect');

mpath = require('path');

module.exports = function(app) {
  app.set('public', mpath.resolve(mpath.join(__dirname, '../public')));
  app.use(connect.logger());
  if (app.set('gzip compression')) {
    app.use(connect.compress());
  }
  return app.use(connect["static"](app.set('public')));
};
