class mczolko.net.Request


	###*
		@constructor
		@param {string} id The id of the request.
 		@param {string} url Uri to make the request too.
 		@param {string=} opt_method Send method, default: GET.
		@param {ArrayBuffer|Blob|Document|FormData|string=} opt_content Post data.
 		@param {Object|goog.structs.Map=} opt_headers Map of headers to add to the
 			request.
 		@param {*=} opt_priority The priority of the request. A smaller value means a
 			higher priority.
 		@param {Function=} opt_callback Callback function for when request is
 			complete. The only param is the event object from the COMPLETE event.
 		@param {number=} opt_maxRetries The maximum number of times the request
			should be retried.
		@param {goog.net.XhrIo.ResponseType=} opt_responseType The response type of
 			this request; defaults to goog.net.XhrIo.ResponseType.DEFAULT.
 		@return {goog.net.XhrManager.Request} The queued request object.
	###
	constructor: (@id, @url, @opt_method, @opt_content, @opt_headers = null, @opt_priority, @opt_maxRetries) ->
		if @opt_headers is null
			@opt_headers = {}


	getId: ->
		if !@id
			throw 'ID not set!'
		@id


	getUrl: ->
		if !@url
			throw 'URL not set!'
		@url


	getMethod: -> @opt_method

	getContent: -> @opt_content

	getPriority: -> @opt_priority

	getRetries: -> @opt_maxRetries

	getHeaders: -> @opt_headers


	###*
		@param {mczolko.net.Response} response
	###
	onComplete: (response) -> return


	###*
		@param {mixed} error
	###
	onError: (error) -> return