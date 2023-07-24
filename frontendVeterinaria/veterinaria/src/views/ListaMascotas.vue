<template>
  <div class="container" id="principal">
    <div id="contdatos">
      <br>
    <div  id="datosprop">
      <div class="" >
        <h5 ><b>Propietario</b></h5>
        <h5 v-html="datospropietario.nombres" ></h5>
        <h5 v-html="datospropietario.apellidos"></h5>
      </div>
      <div>
          <h5><b>Contacto</b></h5>
           <h5 v-html="datospropietario.contacto"></h5>
      </div>
      <div>
        <router-link :to="'/mascota/'+datospropietario.id" class="btn btn-primary mt-4">Nuevo registro</router-link> 
      </div>
      <div class="align-left">
        <h2><center>Lista mascotas</center></h2>
      </div>
     
    </div >
    <div clas="table-responsive mt-4" id="datosmasc">
      <table class="table table-striped table-bordered">
        <thead class="thead-dark ">
          <tr class="fs-5">
              <!--<th class="fs-5">Foto</th>-->
              <th class="fs-5">Nombre</th>
              <th>Raza</th>
              <th>Color</th>
              <th>Edad</th>
              <th>Especie</th>
              <th>Actualizar</th>
             
          </tr>
        </thead>
        <tbody>
          <tr v-for='mascota in mascotas' :key='mascota.id'>
            <!--<td><img v-bind:src="mascota.foto" alt="imagen" > </td>-->
            <td>{{mascota.nombre}}</td>
            <td>{{mascota.raza}}</td>
            <td>{{mascota.color}}</td>
            <td>{{mascota.edad}}</td>
            <td>{{mascota.especie.nombre}}</td>
            <td><router-link :to="'/actualizar/'+mascota.id" class="btn btn-success">Actualizar</router-link> </td>
          </tr>
        </tbody>
      </table>
      
    </div>
    <br>
    <br>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'ListaMascotas',
    data(){
      return{
        mascotas:[],
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
      listado(){
        this.axios({
          method:'get',
          url:'http://127.0.0.1:8000/veterinaria/mascota/?propietario='+this.$route.params.id 
        })
        .then(response=>{
          this.mascotas=response.data;
          console.log(response);
        })
        .catch(error=>{
          console.log(error);
        })
      },
      propietario(){
        this.axios({
          method: 'get',
          url: 'http://localhost:8000/veterinaria/propietario/'+this.$route.params.id       
        })
        .then(response=>{
          this.datospropietario=response.data;
          console.log(response);
        })
        .catch(error=>{
           console.log(error);
        })
      },
    },
    created() {
      this.propietario();
    },
    mounted() {
      this.listado();
    },
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style >
#principal{
  background: url(../assets/imagenes/tapiz1.jpg);
  background-attachment: scroll;
  background-repeat: repeat;
 
 

}

#contdatos {
	background-color:  rgb(214, 188, 212);
	width: 90%;
	height: auto;
	margin-left: 5%;
 } 

#datosprop, #datosmasc {

	width: 90%;
	height: auto;
	margin-left: 5%;
 } 
  img {
                max-width: 100%;
                }
</style>
