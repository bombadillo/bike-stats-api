urls =
  databaseUri: 'mongodb://localhost:27017'
  stravaUrl: 'http://www.strava.com/api/v3/athlete/activities'

db =
  name: 'bikeStats'

strava =
  authToken: '6152ab3f74dc157e440bf9ea9a0c953462f1ae7a'

exports = this
exports.urls = urls
exports.db = db
exports.strava = strava