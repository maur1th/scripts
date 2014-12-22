var helper = require('./helper')
dir = process.argv[2]
ext = process.argv[3]

function logFiles(err, files) {
  if (err)
    return console.error('There was an error:', err)
  files.forEach(function(file) {
    console.log(file)
  })
}

helper(dir, ext, logFiles)
