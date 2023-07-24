<template>
  <div class="container" id="principal">
    <br>
    <br>
  <div id="contabla">
    <div  >
      <div>
        <router-link to="/nuevo" class="btn btn-primary mt-4">Nuevo registro</router-link> 
        <!--<a href="" class="btn btn-primary mt-4">Nuevo registro</a>-->
        
      </div>
      <div class="align-left">
        <h2><center>Lista propietarios</center></h2>
      </div>
      
    </div>
    <div clas="table-responsive mt-4">
      <table class="table table-striped table-bordered" id="tabla">
        <thead class="thead-dark "> 
          <tr class="fs-5">
              <th class="fs-5">Foto</th>
              <th class="fs-5">Nombres</th>
              <th>Apellidos</th>
              <th>Ci</th>
              <th>Dirección</th>
              <th>Contacto</th>
              <th>Email</th>
              <th>Actualizar</th>
              <th>Ver mascotas</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for='propietario in propietarios' :key='propietario.id'>
            <td><img v-bind:src="propietario.foto" alt="imagen" width="100%"> </td>
            <td>{{propietario.nombres}}</td>
            <td>{{propietario.apellidos}}</td>
            <td>{{propietario.ci}}</td>
            <td>{{propietario.direccion}}</td>
            <td>{{propietario.contacto}}</td>
            <td>{{propietario.correo}}</td>
            <td><router-link :to="'/actualizar/'+propietario.id" class="btn btn-success">Actualizar</router-link> </td>
            <td><router-link :to="'/listamascotas/'+propietario.id" class="btn btn-warning">Mascotas</router-link></td>
          </tr>
        </tbody>
      </table>
      <br>
      <br>
    </div>
  </div>
  </div>
</template>

<script>
  export default {
    name: 'ListaPropietarios',
    data(){
      return{
        propietarios:[]
      }
    },
    methods: {
      listado(){
        this.axios({
          method:'get',
          url:'http://localhost:8000/veterinaria/propietario/'
        })
        .then(response=>{
          this.propietarios=response.data;
          console.log(response);
        })
        .catch(error=>{
          console.log(error);
        })
      }
    },
    mounted() {
      this.listado();
    },
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
#principal{
  background: url(../assets/imagenes/tapiz1.jpg);
  background-repeat: repeat;
  width: 100%;
 
 

}

#contabla {
	background-color:  rgb(190, 212, 216);
	width: 90%;
	height: auto;
	margin-left: 5%;
 } 

 #tabla {
	width: 90%;
	height: auto;
	margin-left: 5%;
 } 

 
</style>
