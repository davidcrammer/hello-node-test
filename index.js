const express = require("express")
const os = require("os")

const app = express()
const port = 8080

app.get("/", (req, res) => {
  const hostname = os.hostname()
  res.send(`Hello from ${hostname}`)
})

app.listen(port, "0.0.0.0", () => {
  console.log(`Server is running on port ${port}`)
})
