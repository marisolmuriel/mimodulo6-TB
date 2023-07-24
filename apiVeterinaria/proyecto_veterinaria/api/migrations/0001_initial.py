# Generated by Django 4.2.3 on 2023-07-19 01:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Especie',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='Propietario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombres', models.CharField(max_length=50)),
                ('apellidos', models.CharField(max_length=50)),
                ('ci', models.CharField(max_length=15, unique=True)),
                ('direccion', models.TextField(null=True)),
                ('contacto', models.IntegerField()),
                ('correo', models.EmailField(max_length=254)),
                ('foto', models.CharField(max_length=150, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='Mascota',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('raza', models.CharField(max_length=50)),
                ('color', models.CharField(max_length=50)),
                ('edad', models.IntegerField()),
                ('foto', models.CharField(max_length=150, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('especie', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.especie')),
                ('propietario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.propietario')),
            ],
        ),
    ]
