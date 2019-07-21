const express = require('express')
const app = express()
const port = process.env.PORT || 9000

app.get('/', (req, res) => res.send('asdasdd!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
