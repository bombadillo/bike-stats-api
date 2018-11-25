dbHandler = require '../db/dbHandler'
activityHistoryRetriever = require '../strava/activity/activityHistoryRetriever'

create = (user) ->
  existingUser = await dbHandler.getOne 'user', { stravaId: user.stravaId }


  
  try
    if existingUser
      response = false
    else
      await dbHandler.insert 'user', user
      response = true

    activityHistoryRetriever.retrieveAll user, user.accessToken

    return response
  catch err
    return false

exports = this
exports.create = create