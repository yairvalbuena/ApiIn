const express = requiere('express')

const app = express()
app.set('port', process.env.PORT || 9000)


app.listen(app.get('port'), () => {
    console.log('server listening', app.get('port'))
})