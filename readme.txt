INSTALAR PYTHON

ENTRAR AL DIRECTORIO 
/apiVeterinario

INSTALAR DJANGO
pip install django

BORRAR LA CARPETA venv

CREAR EL ENTORNO VIRTUAL DENTRO DE LA CARPETA apiVeterinaria 
py -m venv venv

ACTIVAR EL ENTORNO VIRTUAL
.\venv\Scripts\activate

ENTRAR A LA CARPETA
/proyecto_veterinaria

INSTALAR LOS REQUERIMIENTOS CON EL COMANDO
pip install -r requirements.txt


VERIFICAR FRAMEWORK Y LIBRERIAS INSTALADAS CON EL COMANDO
pip freeze

DEBERIA DE EXISTIR LOS INSTALADO LO SIGUIENTE
***************************************************
*	asgiref==3.7.2                            *  
*	Django==4.2.3				  *
*	django-cors-headers==4.2.0                *
*	djangorestframework==3.14.0               * 
*	mysqlclient==2.2.0                        *
*	Pillow==10.0.0                            *
*	pytz==2023.3                              *
*	sqlparse==0.4.4                           *
*	typing_extensions==4.7.1                  *
*	tzdata==2023.3                            *  
***************************************************

INICIAR EL SERVIDOR
python manage.py runserver

VERIFICAR EN EL NAVEGADOR SU FUNCIONAMIENTO
http://127.0.0.1:8000/

SUBIR XAMP
CREAR EN PHPMYADMIN LA BASE
veterinaria

MIGRAR CON
python manage.py makemigrations
python manage.py migrate

CREAR UN SUPERUSUARIO
python manage.py createsuperuser

LOGEARSE EN LA SIGUIENTE URL CON LA CUENTA CREADA EN EL SUPER USUARIO
 http://localhost:8080/









