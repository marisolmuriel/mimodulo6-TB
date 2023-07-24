from django.urls import path,include
from rest_framework import routers
from .api_propietario import propietario_api_view,propietario_detalle_view
#from .views import ImageView
from .api_especie import especie_api_view,especie_detalle_view
#from .api_mascota import mascota_api_view,mascota_detalle_view
from .api_mascota import propietario_mascota_view,registro_mascota_view,mascota_detalle_view


'''router=routers.DefaultRouter()
router.register(r'propietario',views.PropietarioViewset)
router.register(r'especie',views.EspecieViewset)

urlpatterns=[
    path('',include(router.urls))
]'''
urlpatterns=[

    path('propietario/',propietario_api_view,name='listapropietario.show'),
    path('propietario/<int:propietario_id>',propietario_detalle_view,name='datopropietario.show'),
    path('especie/',especie_api_view,name='listaespecie.show'),
    path('especie/<int:especie_id>',especie_detalle_view,name='datoespecie.show'),
    #path('mascota/',mascota_api_view,name='listamascota.show'),
    path('mascota/',propietario_mascota_view,name='listamascotas.show'),
    path('mascotaregistro/',registro_mascota_view,name='registromascotas.show'),
    path('mascota/<int:mascota_id>',mascota_detalle_view,name='datomascota.show'),
  
]