from bottle import route, run, request, template, static_file

@route('/images/<filename:path>')
def server_static(filename):
    return static_file(filename, root='./img/')

@route('/statics/<filename:path>')
def server_static(filename):
    return static_file(filename, root='./files/')

@route('/pokesite/')
def index():
    return template('inicio')

@route('/pokesite/quiz/')
def index():
    return template('quiz')

@route('/pokesite/<var>')
def resultado(var):
    return template(var)


run(host='localhost', port=8080)
