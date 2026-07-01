import express from "express";

const app = express();
const port = 3000;

app.get("/", (req, res) => {
    res.json({
        message: "hello world from k8s container",
        service: "hello node",
        pod: process.env.POD_NAME || "unknown",
        time: new Date().toISOString(),
    });
});

app.get("/ready", (req, res) => {
    res.status(200).send("ready");
});

app.get("/healthy", (req, res) => {
    res.status(200).send("ok done");
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
    console.log(`Running in Pod: ${process.env.POD_NAME}`);
});