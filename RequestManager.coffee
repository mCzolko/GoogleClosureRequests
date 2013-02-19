class mczolko.net.RequestManager


	###*
		@constructor
	###
	constructor: ->
		@xhrManager = new goog.net.XhrManager


	###*
		@param {mczolko.net.Request} request
		@return {goog.net.XhrManager.Request|null}
	###
	send: (request) ->
		response = new liquidy.net.Response @

		callback = (e) ->
			response.setResponse e
			request.onComplete response
			return

		try
			@xhrManager.send(request.getId(),
				request.getUrl(),
				request.getMethod(),
				request.getContent(),
				{}, #headers
				request.getPriority(),
				callback,
				request.getRetries())
		catch error
			request.onError error