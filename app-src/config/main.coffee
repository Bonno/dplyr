'use strict'

express = require 'express'
mpath   = require 'path'

module.exports = (app) ->
  app.set(
    'views'
    mpath.resolve mpath.join __dirname, '../../app-src/views'
  )
  app.set(
    'public'
    mpath.resolve mpath.join __dirname, '../public'
  )

  app.set 'view engine', 'jade'
  app.use express.logger()
  app.use express.compress()
  app.use express.static(app.set 'public')
