customerGet = require './get'
customerPost = require './post'
customerPut = require './put'

handle = (server) ->
  customerGet.handle server
  customerPost.handle server
  customerPut.handle server

exports = this
exports.handle = handle