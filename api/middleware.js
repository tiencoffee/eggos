const https = require('https')

module.exports = function(req, res, next) {
	var {url} = req
	if (url.startsWith('/api/')) {
		params = new URLSearchParams(url)
		fileUrl = params.get('url')
		https.get(fileUrl).on('response', response => {
			var body = []
			response.on('data', chunk => {
				body.push(chunk)
			})
			response.on('end', () => {
				buf = Buffer.concat(body)
				res.end(buf)
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
