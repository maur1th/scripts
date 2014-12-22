var http = require('http')
var websites = []
for(i=2; i<process.argv.length; i++) {
  websites.push(process.argv[i])
}

var data = {}
var done = 0
websites.forEach(function(url) {
  data[url] = []  // Create a container for this website data
  http.get(url, function(res) {
    res.setEncoding('utf-8')
    res.on('data', function(chunk) {
      data[url].push(chunk)
    })
    res.on('end', function() {
      done += 1
      if(done===websites.length) {
        Object.keys(data).forEach(function(url) {
          s = ''
          data[url].forEach(function(chunk) {
            s += chunk
          })
          console.log(s)
        })
      }
    })
  })
})