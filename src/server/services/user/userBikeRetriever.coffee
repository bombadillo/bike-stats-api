dbHandler = require '../db/dbHandler'

getByStravaId = (stravaId, bikeId) ->
  try
    user = await dbHandler.getOne 'user', { stravaId }
    if user
      bikes = user.bikes.filter (bike) -> bike.id == bikeId
      if bikes.length == 1
        return bikes[0]
      else
        return bike
    else
      return false
  catch err
    return false

exports = this
exports.getByStravaId = getByStravaId