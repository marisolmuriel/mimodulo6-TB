<template>
  <div class="container" id="principal">
    <br>
  <div id="contform">
    <br> 
    <div class="align-left">
        <h2>Registro mascota</h2>
    </div>
    <form enctype="multipart/form-data" @submit.prevent="registrar()" id="formulario">
      <div class="mb-3">
        <label for="nombres" class="form-label">Nombre</label>
        <input type="text" v-model="datosmascota.nombre" class="form-control" id="" placeholder="Nombres">
      </div>
      <div class="mb-3">
        <label for="apellidos" class="form-label">Raza</label>
        <input type="text" v-model="datosmascota.raza" class="form-control" id="" placeholder="Raza">
      </div>
      <div class="mb-3">
        <label for="ci" class="form-label">Color</label>
        <input type="text" v-model="datosmascota.color" class="form-control" id="" placeholder="Color">
      </div>
      <div class="mb-3">
        <label for="direccion" class="form-label">Edad</label>
        <input type="number" min="1" max="100" v-model="datosmascota.edad" class="form-control" id="" placeholder="Edad">
      </div>
      <div class="mb-3">
        <label for="direccion" class="form-label">Especie</label>
        <select v-model="datosmascota.especie" class="form-select">
          <option v-for="(value,key) in datosespecie" :key="key" :value=value.id >{{value.nombre}}</option>
        </select>
      </div>
      <!--<div class="mb-3">
        <label for="foto" class="form-label">Foto mascota</label>
        <input type="file" @change="mostrarImagen" class="form-control-file">
        <figure>
          <img width="200" height="200"  v-bind:src="imagenMascota" alt="Foto propietario">
        </figure>
      </div>-->
      <div class="mb-3">
        <input type="submit" class="btn btn-primary" id="" value="Registrar">
      </div>
      <pre>{{datosmascota}}</pre><!---->
      <pre>{{datosespecie}}</pre>
    </form>
     <br> 
  </div>
  </div>
</template>

<script>
  export default {
    name: 'NuevaMascota',
    data(){
      return{
        imagenMascota:'',
        datosmascota:{
          nombre:'',
          raza:'',
          color:'',
          edad:'',
          foto:null,
          propietario:this.$route.params.id,
          especie:'',
        },
        datosespecie:{
          nombre:'',
        }
      }
    },
    methods: {
      mostrarImagen(e){
        let file=e.target.files[0];
        console.log(file)
        this.imagenMascota=URL.createObjectURL(file);
        this.datosmascota.foto=e.target.files[0];
      },
      registrar(){
        this.axios({
          method: 'post',
          url: 'http://127.0.0.1:8000/veterinaria/mascotaregistro/',
          data: this.datosmascota,
          headers: {
            'Content-Type': 'multipart/form-data'
          }
        })
        .then(response=>{
          this.datosmascota={
            nombre:'',
            raza:'',
            color:'',
            edad:'',
            foto:null,
            propietario:this.$route.params.id,
            especie:'',
          };
          console.log(response);
          Swal.fire({
            //position: 'top-end',
            position: 'top',
            icon: 'Ok',
            title: 'Se registro correctamente...!',
            showConfirmButton: false,
            timer: 1500
          })
        })
        .catch(error=>{
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Error al registrar...!',
            //footer: '<a href="">Why do I have this issue?</a>'
          })
        })
      },
      especies(){
        this.axios({
          method: 'get',
          url: 'http://127.0.0.1:8000/veterinaria/especie/'       
        })
        .then(response=>{
          this.datosespecie=response.data;
          console.log(response);
        })
        .catch(error=>{
           console.log(error);
        })
      },
    },
    created() {
      this.especies();
    },
    mounted() {
      const datos=document.querySelectorAll("select");
      console.log(datos);
    },
    
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
#principal{
  background: url(../assets/imagenes/tapiz3.jpg);
  background-attachment: scroll;
  background-repeat: repeat;
 
 

}

#contform {
	background-color:  rgb(110, 217, 199);
	width: 90%;
	height: auto;
	margin-left: 5%;
 } 

#formulario {

	width: 90%;
	height: auto;
	margin-left: 5%;
 } 
</style>
