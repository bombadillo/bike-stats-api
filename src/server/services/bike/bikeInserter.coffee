dbHandler = require '../db/dbHandler'

insert = (bike) ->
  try
    result = await dbHandler.insert 'bike', bike
    return result
  catch err
    return false

exports = this
exports.insert = insert