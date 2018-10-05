express = require 'express'
app = express()
bodyParser = require 'body-parser'
api = require './api/'
errorHandler = require './helpers/errorHandler'

app.use bodyParser.json()

errorHandler.handleUncaughtErrors()

start = ->
  app.set 'port', (process.env.PORT || 5000)
  api.start app
  app.listen app.get('port'), ->
    console.log 'The app is running on port', app.get 'port'

exports = this
exports.start = start
