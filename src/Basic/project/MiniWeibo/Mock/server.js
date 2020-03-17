// server.js

const jsonServer = require('json-server')
const server = jsonServer.create()
const router = jsonServer.router('rou.json')

const middlewares = jsonServer.defaults({
    readOnly:false,
    logger:true,
    bodyParser:true,
    noCors:false,
})

server.use(middlewares)

server.use(router)

let obj={}

server.listen(3001, () => {
  console.log('JSON Server is running')
  for (let p in obj){
    console.log("http://localhost:"+port+"/api/"+p)
}
})

