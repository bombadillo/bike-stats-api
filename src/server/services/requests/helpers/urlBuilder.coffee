build = (url, params) ->
    paramString = '?'
    for key of params  
       paramString += "#{key}=#{params[key]}&"
    paramString = paramString.substring 0, paramString.length - 1
    return url + paramString

exports = this
this.build = build