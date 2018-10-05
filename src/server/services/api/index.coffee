get = require './requestHandlers/get'
post = require './requestHandlers/post'

start = (server) ->
    get.handle server
    post.handle server

exports = this
exports.start = start