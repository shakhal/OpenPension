{exec} = require 'child_process'

handleExecErrors = (err, stdout, stderr)->
        if err then console.log 'Errors: '+err
        if stdout then console.log 'Messages: '+stdout
        if stderr then console.log 'Errors: '+stderr
        if err then process.exit 1

task 'test',->
        exec "node_modules/jasmine-node/bin/jasmine-node --verbose --forceexit --coffee ./specs" , handleExecErrors
