from django.http import HttpResponse, HttpResponseNotFound
from django.shortcuts import render


def index(request):
    return render(request, 'home/index.html')

def about(request):
    return render(request, 'home/about.html')

def contacts(request):
    return render(request, 'home/contacts.html')

def news(request):
    return render(request, 'home/news.html')

def ownhomes(request):
    return render(request, 'home/ownhomes.html')


def PageNotFound(request, exception):
    return HttpResponseNotFound('<h1> 404 </h1>')
