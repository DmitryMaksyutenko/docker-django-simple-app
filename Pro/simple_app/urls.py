from django.urls import path
from .views import simple


urlpatterns = [
    path('', simple, name='simple')
]