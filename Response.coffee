class mczolko.net.Response


	constructor: (@requestManager) ->


	setResponse: (@response) -> return


	get: -> goog.json.parse @response


	getRaw: -> @response