const express = require('express')
const mysql = require('mysql')
const myconnection = require('express-myconnection')
const routes = require('./routes')

const dbConfig = {
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'ventasdb'
}

const app = express()
app.set('port', process.env.PORT || 9000)
app.use(myconnection(mysql, dbConfig, 'single'))

//rutas
app.get('/', (req, res) => {
    res.send('Prueba de API')
})
app.use('/api', routes)

//listen
app.listen(app.get('port'), () => {
    console.log('server listening', app.get('port'))
})