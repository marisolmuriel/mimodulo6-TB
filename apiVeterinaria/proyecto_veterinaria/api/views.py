#from django.shortcuts import render
from rest_framework import viewsets
from .serializer import EspecieSerializer#,EspecieSerielizer
from .models import Propietario#,Especie
# Create your views here.

class PropietarioViewset(viewsets.ModelViewSet):
    queryset=Propietario.objects.all()
    serializer_class=EspecieSerializer

# Create your views here.
