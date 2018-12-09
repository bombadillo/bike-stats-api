express = require 'express'
cors = require 'cors'
app = express()
app.use cors()
bodyParser = require 'body-parser'
api = require './api/'
errorHandler = require './helpers/errorHandler'

app.use bodyParser.json()

errorHandler.handleUncaughtErrors()

start = ->
  app.set 'port', (process.env.PORT || 5003)
  api.start app
  app.listen app.get('port'), ->
    console.log 'The app is running on port', app.get 'port'

start()
