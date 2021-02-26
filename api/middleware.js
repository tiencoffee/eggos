const {get} = require('https')
const {parse} = require('url')

module.exports = function(req, res, next) {
	if (req.url.startsWith('/api/')) {
		var fileUrl = parse(req.url, true).query.url
		if (fileUrl.startsWith('//'))
			fileUrl = 'https:' + fileUrl
		get(fileUrl).on('response', response => {
			var body = []
			response.on('data', chunk => {
				body.push(chunk)
			})
			response.on('end', () => {
				res.end(Buffer.concat(body))
			})
		})
	}
	else {
		if (next) next()
	}
}
