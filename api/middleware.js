const
	https = require('https'),
	url = require('url')

module.exports = function(req, res, next) {
	if (req.url.startsWith('/api/middleware.js/')) {
		var fileUrl = req.url.replace('/api/middleware.js/', '')
		https.get(fileUrl).on('response', response => {
			var body = []
			response.on('data', chunk => {
				body.push(chunk)
			})
			response.on('end', () => {
				res.end(Buffer.concat(body))
			})
			response.on('error', err => {
				res.status(err.code).end(err.message)
			})
		})
	}
	else {
		if (next) next()
	}
}
