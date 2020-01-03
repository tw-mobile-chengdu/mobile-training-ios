module.exports = (req, res, next) => {
    var matchReg = /(?<=images\/).*?(.png|.jpg)/
    console.log('>>>>>>>>1', req.path.match(matchReg))
    var imgName = req.path.match(matchReg)[0]
    if (req.method === "GET" && req.path.startsWith("/images/" + imgName)) {
      res.sendFile( __dirname + "/public/assets/images/" + imgName);
      return;
    }
  
    if (req.method === "GET") {
        console.log("=========>")
        return
    }
    next();
  };