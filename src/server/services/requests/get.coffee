request = require 'request'
urlBuilder = require './helpers/urlBuilder'
config = require '../../config'

accessToken = config.strava.accessToken

module.exports = (url, params) ->
    params = params || {}
    params.access_token = accessToken
    url = urlBuilder.build url, params

    console.log url

    return new Promise (resolve, reject) ->
        request.get url, (err, res, body) ->
            console.log 'got data'
            resolve JSON.parse body