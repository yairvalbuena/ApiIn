const express = require('express')
const routes = express.Router()

routes.get('/', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) {
            return err.toString
        }

        conn.query('SELECT * FROM proveedores_ventas', (err, rows) => {
            if (err) {
                return
            }

            res.json(rows)
        })
    })

})

routes.get('/:id', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) {
            return err.toString
        }

        conn.query('SELECT * FROM proveedores_ventas WHERE id = ?', [req.params.id], (err, rows) => {
            if (err) {
                return
            }

            res.json(rows)
        })
    })

})

routes.get('/byproveedorid/:id', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) {
            return err.toString
        }

        conn.query('SELECT * FROM proveedores_ventas WHERE id_proveedor = ?', [req.params.id], (err, rows) => {
            if (err) {
                return
            }

            res.json(rows)
        })
    })

})

routes.get('/byproveedorname/:name', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) {
            return err.toString
        }

        conn.query('SELECT * FROM proveedores_ventas WHERE proveedor = ?', [req.params.name], (err, rows) => {
            if (err) {
                return
            }

            res.json(rows)
        })
    })

})

routes.get('/byfecha/:fecha', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) {
            return err.toString
        }

        conn.query('SELECT * FROM proveedores_ventas WHERE fecha = ?', [req.params.fecha], (err, rows) => {
            if (err) {
                return
            }

            res.json(rows)
        })
    })

})

module.exports = routes