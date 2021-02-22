const
	https = require('https'),
	url = require('url')

module.exports = function(req, res, next) {
	if (req.url.startsWith('/api/')) {
		var fileUrl = url.parse(req.url, true).query.url
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
