request = require 'request'
urlBuilder = require './helpers/urlBuilder'

accessToken = '6152ab3f74dc157e440bf9ea9a0c953462f1ae7a'

module.exports = (url, params) ->
    params = params || {}
    params.access_token = accessToken    
    url = urlBuilder.build url, params

    console.log url

    return new Promise (resolve, reject) ->
        request.get url, (err, res, body) ->
            console.log 'got data'
            resolve JSON.parse body