from django.urls import path

from .views import *

urlpatterns = [
    path('', index, name='index'),
    path('about/', about, name='about'),
    path('contacts/', contacts, name='contacts'),
    path('news/', news, name='news'),
    path('ownhomes/', ownhomes, name='ownhomes')

]


handler404 = PageNotFound