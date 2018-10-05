dbHandler = require '../db/dbHandler'
q = require 'q'

create = (user) -> 
  deferred = q.defer()

  dbHandler.getOne('user', stravaId: user.stravaId).then (existingUser) ->
    if existingUser
      deferred.resolve(false)
    else
      dbHandler.insert('user', user).then (result) ->
        deferred.resolve(true)

  return deferred.promise

exports = this
exports.create = create