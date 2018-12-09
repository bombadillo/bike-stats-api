dbHandler = require '../db/dbHandler'

create = (user) ->
  existingUser = await dbHandler.getOne 'user', { stravaId: user.stravaId }

  try
    if existingUser
      existingUser.bikes = user.bikes
      await dbHandler.update 'user', existingUser
      response = false
    else
      await dbHandler.insert 'user', user
      response = true

    return response
  catch err
    return false

exports = this
exports.create = create