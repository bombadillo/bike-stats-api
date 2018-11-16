dbHandler = require '../db/dbHandler'

create = (user) ->
  existingUser = await dbHandler.getOne 'user', { stravaId: user.stravaId }

  try
    if existingUser
      return false
    else
      await dbHandler.insert 'user', user
      return true
  catch err
    return false

exports = this
exports.create = create