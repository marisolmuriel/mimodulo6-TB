from rest_framework.parsers import MultiPartParser
from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view,parser_classes
from .models import Mascota
from .serializer import MascotaSerielizer

@api_view(['GET'])
def propietario_mascota_view(request):
    propietarioid= request.query_params.get('propietario', None)
    if propietarioid is not None:
        mascotas = Mascota.objects.filter(propietario__id__icontains=propietarioid)
    else:
        mascotas = Mascota.objects.all()
    serializer = MascotaSerielizer(mascotas, many=True)
    return Response(serializer.data)

@api_view(['POST'])
@parser_classes([MultiPartParser])
def registro_mascota_view(request):
    mascota_serializer=MascotaSerielizer(data=request.data)
    if mascota_serializer.is_valid():
      mascota_serializer.save()
      return Response(mascota_serializer.data, status=status.HTTP_201_CREATED)
    return Response(mascota_serializer.errors,status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET','PUT','DELETE'])
@parser_classes([MultiPartParser])
def mascota_detalle_view(request,mascota_id=None):
  mascota=Mascota.objects.filter(id=mascota_id).first()
  if mascota:
    if request.method=='GET':
      mascota_serializer=MascotaSerielizer(mascota)
      return Response(mascota_serializer.data, status=status.HTTP_200_OK)
    
    elif request.method=='PUT':
      request.data
      mascota_serializer=MascotaSerielizer(mascota,data=request.data)
      if mascota_serializer.is_valid():
        mascota_serializer.save()
        return Response(mascota_serializer.data, status=status.HTTP_200_OK)
      return Response(mascota_serializer.errors,status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method=='DELETE':
      mascota.delete()
      return Response({'message':'Eliminado correctamente!'}, status=status.HTTP_200_OK)  
  return Response({'message':'No existe tal registro!'}, status=status.HTTP_400_BAD_REQUEST)  
