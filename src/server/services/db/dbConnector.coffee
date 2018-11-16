mongoClient = require('mongodb').MongoClient
config = require '../../config/app'
url = config.urls.databaseUri

dbConnection = undefined

connect = ->
  try
    if !dbConnection
      db = await mongoClient.connect url
      console.log 'Connected to mongo db'
      dbConnection = db.db config.db.name
      return dbConnection
    else
      return dbConnection
  catch err
      return null

exports = this
exports.connect = connect