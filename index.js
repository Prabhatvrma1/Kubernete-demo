import express from "express";
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.json({
    message: "Hello World from K8s Container",
    service: "Hello Node",
    pod: process.env.HOSTNAME || "unknown",
    time: new Date().toISOString(),
  });
});

app.get("/ready", (req, res) => {
  res.status(200).send("Ready");
});

app.get("/healthy", (req, res) => {
  res.status(200).send("OK");
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});