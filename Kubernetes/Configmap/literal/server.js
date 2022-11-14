var os = require('os')
var http = require('http')

var handlerRequest = function(request, response) {
    response.writeHead(200);
    response.end("my prefered lanuage is " + process.env.LANGUAGE + "\n");

    console.log("[" +
        Date(Date.now()).toLocaleString()+
        "]" + os.hostname());
}

var www = http.createServer(handlerRequest);
www.listen(8080)