"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime
import json
import myform
@route('/')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/articles')
@view('contact')
def contact():
    with open('data.json') as json_file:
        data = json.load(json_file)
    
    for p in data["arcticles1"]:
       resualt = p["description"]
       resualt1 = p["photo"]    
       resualt2 = p["article"]
       resualt11 = p["description1"]
       resualt12 = p["photo1"]    
       resualt13 = p["article1"]
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year,
        visible = resualt,
        visible1 = resualt1,
        visible2 = resualt2,
        visible11 = resualt11,
        visible12 = resualt12,
        visible13 = resualt13
    )

@route('/product')
@view('about')
def about():
    
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )
@route('/forms')
@view('forms')
def forms():
    """Renders the about page."""



    
    with open('newData.txt', 'r') as f:
        nums = f.read().splitlines()
   
    print(nums)
    
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year,
        datausers = nums
    )

@route('/formsdata')
@view('formsdata')
def formsdata():
    """Renders the about page."""

    with open('newData.txt', 'r') as f:
        nums = f.read().splitlines()
   
    print(nums)
    
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year,
        datausers = nums
    )