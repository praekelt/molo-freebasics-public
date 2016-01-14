from FreebasicsPublic.settings import *

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': 'FreebasicsPublic_test.db',
    }
}

DEBUG = True
CELERY_ALWAYS_EAGER = True
