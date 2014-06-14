q = require 'q'

module.exports = class SleepBeforeOnCompile
  brunchPlugin: yes

  constructor: (@config) ->
    @sleepMillis = @config.plugins.sleepBeforeOnCompile ? 0

  onCompile: (generatedFiles) ->
    deferred = q.defer()
    noopFn1 = ->
      deferred.resolve()
    noopFn2 = ->
    setTimeout noopFn1, @sleepMillis
    deferred.promise.then noopFn2
    return
