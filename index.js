const express = require('express')
const app = express()
const port = process.env.NODE_ENV === 'production' ? 9000 : 8000

app.get('/', (req, res) => res.send(process.env.NODE_ENV + ' 1'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
