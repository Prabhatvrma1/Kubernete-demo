const express = require('express');

const app = express();

const port = 3000;

app.get('/' , (req, res) =>{
    res.json({
        message: "hello world from k8s container",
        service: "hello node",
        pod: port || "unknown",
        time: new Date().toISOString(),
    });
});

app.get("/ready" , (req, res) =>{
    res.status(200).send("ready");
})

app.get("/healthy" , (req, res) =>{
    res.status(200).send("ok done");
})

app.listen(port , () =>{
    console.log("server is running on port 3000");
})