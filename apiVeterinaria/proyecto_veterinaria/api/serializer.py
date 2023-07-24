from rest_framework import serializers
from .models import Propietario,Especie,Mascota
#importando el modelo user de django
from django.contrib.auth.models import User

class PropietarioSerializer(serializers.ModelSerializer):
    class Meta:
        model=Propietario
        #indicandole que campos van a ser serializados
        #fields=('nombres','apellidos','ci')
        #indicando que todos los campos se tomen encuenta
        fields='__all__'

class EspecieSerielizer(serializers.ModelSerializer):
    class Meta:
        model=Especie
        fields='__all__'

class MascotaSerielizer(serializers.ModelSerializer):
    especie = EspecieSerielizer()
    class Meta:
        model=Mascota
        #fields='__all__'
        exclude=('created_at','updated_at')
    '''def to_representation(self, instance):
      return {
        #'id':instance.id,
        'nombre':instance.nombre,
        'raza':instance.raza,
        'color':instance.color,
        'edad':instance.edad,
        'foto':instance.foto if instance.foto!=''else'',
        'propietario':instance.propietario,
        'especie':instance.especie.nombre
      }'''




class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model=User
        #fields='__all__'
        fields=('id','username','password')
    #esta funcion encripta el password
    def create(self, validate_data):
        user=User(**validate_data)
        user.set_password(validate_data['password'])    
        user.save()
        return user
    def update(self,instance,validated_data):
        update_user=super().update(instance,validated_data)
        update_user.set_password(validated_data['password'])
        update_user.save()
        return update_user
