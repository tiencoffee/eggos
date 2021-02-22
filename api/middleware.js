const https = require('https')

module.exports = function(req, res, next) {
	var {url} = req
	if (next) {
		if (url.startsWith('/zip/')) {
			url = url.replace('/zip/', '')
			https.get(url).on('response', response => {
				var body = []
				response.on('data', chunk => {
					body.push(chunk)
				})
				response.on('end', () => {
					buf = Buffer.concat(body)
					res.end(buf)
				})
			})
		}
		else {
			next()
		}
	}
	else {
		res.end(url + '')
	}
}
