const express = require('express')
const routes = express.Router()

routes.get('/', (req, res) => {
    res.send('test API')
})

module.exports = routes