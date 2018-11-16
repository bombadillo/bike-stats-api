handleUncaughtErrors = () ->
  process.on 'uncaughtException', (err) ->
    console.log 'whoops! There was an uncaught error'
    console.log err

  process.on 'unhandledRejection', (reason, promise) ->
    console.log "Unhandled rejection #{reason}"
    console.log promise

exports = this
exports.handleUncaughtErrors = handleUncaughtErrors