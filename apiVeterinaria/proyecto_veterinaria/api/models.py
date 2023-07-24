from django.db import models

# Create your models here.
class Propietario(models.Model):
    nombres=models.CharField(max_length=50)
    apellidos=models.CharField(max_length=50)
    ci=models.CharField(max_length=15, unique=True)
    direccion=models.TextField(null=True)
    contacto=models.IntegerField()
    correo=models.EmailField()
    foto=models.ImageField(upload_to="propietarios",null=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Especie(models.Model):
    nombre=models.CharField(max_length=50)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class Mascota(models.Model):
    nombre=models.CharField(max_length=50)
    raza=models.CharField(max_length=50)
    color=models.CharField(max_length=50)
    edad=models.IntegerField()
    foto=models.ImageField(upload_to="mascotas",null=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    propietario=models.ForeignKey(Propietario,on_delete=models.CASCADE)
    especie=models.ForeignKey(Especie, on_delete=models.CASCADE)


