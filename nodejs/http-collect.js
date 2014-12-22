var http = require('http')
var allData = []

http.get(process.argv[2], function(res) {
  res.setEncoding('utf8')
  res.on('data', function(data) {
    allData.push(data)
  })
  res.on('end', function() {
    var s = ''
    allData.forEach(function(evt) {
      s += evt
    })
    console.log(s.length)
    console.log(s)
  })
})