dbHandler = require '../db/dbHandler'
q = require 'q'

insert = (bike) ->
  deferred = q.defer()

  dbHandler.insert('bike', bike).then (result) ->      
    deferred.resolve result
  return deferred.promise

exports = this
exports.insert = insert