<template>
  <div class="container" id="principal">
    <br>
    <br>
  <div id="fondoform">
    <div class="align-left">
        <h2><center>Registro propietario</center></h2>
    </div>
    <form enctype="multipart/form-data" @submit.prevent="registrar()" id="formulario" >
      <div class="mb-3">
        <label for="nombres" class="form-label">Nombres</label>
        <input type="text" v-model="datospropietario.nombres" class="form-control" id="" placeholder="Nombres">
      </div>
      <div class="mb-3">
        <label for="apellidos" class="form-label">Apellidos</label>
        <input type="text" v-model="datospropietario.apellidos" class="form-control" id="" placeholder="Apellidos">
      </div>
      <div class="mb-3">
        <label for="ci" class="form-label">Ci</label>
        <input type="text" v-model="datospropietario.ci" class="form-control" id="" placeholder="Carnet de identidad">
      </div>
      <div class="mb-3">
        <label for="direccion" class="form-label">Dirección</label>
        <input type="text" v-model="datospropietario.direccion" class="form-control" id="" placeholder="Direccion">
      </div>
      <div class="mb-3">
        <label for="contacto" class="form-label">Número contacto</label>
        <input type="text" v-model="datospropietario.contacto" class="form-control" id="" placeholder="Número de contacto">
      </div>
      <div class="mb-3">
        <label for="correo" class="form-label">Correo electronico</label>
        <input type="email" v-model="datospropietario.correo" class="form-control" id="" placeholder="correro electronico">
      </div>
      <div class="mb-3">
        <label for="foto" class="form-label">Foto propietario</label>
        <input type="file" @change="mostrarImagen" class="form-control-file">
        <figure>
          <img width="200" height="200"  v-bind:src="imagenPropietario" alt="Foto propietario">
        </figure>
      </div><!---->
      <div class="mb-3">
        <input type="submit" class="btn btn-primary" id="" value="Registrar">
      </div>
      <!--<pre>{{datospropietario}}</pre>-->
      <br>
    </form>
  </div>
  </div>
</template>

<script>
  export default {
    name: 'NuevoPropietario',
    data(){
      return{
        imagenPropietario:'',
        datospropietario:{
          nombres:'',
          apellidos:'',
          ci:'',
          direccion:'',
          contacto:'',
          correo:'',
          foto:null,
        }
      }
    },
    methods: {
      mostrarImagen(e){
        let file=e.target.files[0];
        console.log(file)
        this.imagenPropietario=URL.createObjectURL(file);
        this.datospropietario.foto=e.target.files[0];
      },
      registrar(){
        this.axios({
          method: 'post',
          url: 'http://localhost:8000/veterinaria/propietario/',
          data: this.datospropietario,
          headers: {
            'Content-Type': 'multipart/form-data'
          }
        })
        .then(response=>{
          this.datospropietario={
            nombres:'',
            apellidos:'',
            ci:'',
            direccion:'',
            contacto:'',
            correo:'',
            foto:null,
          };
          //console.log(response);
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
      }
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
  background: url(../assets/imagenes/tapiz2.jpg);
  background-repeat: repeat;
  width: 100%;
 
 

}

#fondoform {
	background-color:  rgb(204, 147, 96);
	width: 80%;
	height: auto;
	margin-left: 10%;
 } 

 #formulario {
	width: 80%;
	height: auto;
	margin-left: 10%;
 } 
</style>
