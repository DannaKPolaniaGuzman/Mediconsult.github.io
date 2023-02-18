import os #para hacer el base dir

#base dir traera la ruta en la que estoy desarrollando el proyecto y me permita guardar la BD con ese nombre
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

SQLITE = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3')
    }
}

MYSQL = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'bd_mc',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3306'
    }
}


""" MYSQL = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'bd_mc',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3307'
    }
}"""