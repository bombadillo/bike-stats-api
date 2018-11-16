customerGet = require './requestHandlers/customer/get'
customerPost = require './requestHandlers/customer/post'
customerPut = require './requestHandlers/customer/put'

start = (server) ->
  customerGet.handle server
  customerPost.handle server
  customerPut.handle server

exports = this
exports.start = start