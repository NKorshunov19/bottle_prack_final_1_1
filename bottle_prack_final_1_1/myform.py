from bottle import post, request

@post('/forms', method='post')
def my_form():
    return "hello"

