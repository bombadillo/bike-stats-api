bikeCheckGet = require './get'
bikeCheckPost = require './post'
bikeCheckPut = require './put'

handle = (server) ->
  bikeCheckGet.handle server
  bikeCheckPost.handle server
  bikeCheckPut.handle server

exports = this
exports.handle = handle