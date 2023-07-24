<template>
   <nav class="navbar navbar-expand-lg navbar-dark p-3 bg-danger" id="headerNav">
	<img  src="../assets/imagenes/logo.jpeg" >
	      <div class="container-fluid">
	        <a class="navbar-brand d-block d-lg-none" href="#">
	          <img v-bind:src="require('@/assets/img/mascota.png')" height="80" />
	        </a>
	        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	          <span class="navbar-toggler-icon"></span>
	        </button>
	    
	        <div class=" collapse navbar-collapse" id="navbarNavDropdown">
	          <ul class="navbar-nav mx-auto ">
	            <li class="nav-item">
	              <router-link to="/" class="nav-link mx-2 active">Principal</router-link>
	            </li>
	            <li class="nav-item">
	              <!--<a class="nav-link mx-2" href="#">Propietarios</a>-->
                <router-link to="/lista" class="nav-link mx-2">Propietarios</router-link> 
	            </li>
	            <li class="nav-item d-none d-lg-block">
	              <a class="nav-link mx-2" href="#">
	                 <img v-bind:src="require('@/assets/img/mascota.png')" class="rounded-circle border border-warning" height="75" />
	              </a>
	            </li>
	            <li class="nav-item">
                <router-link to="/about" class="nav-link mx-2">Acercade nosotros</router-link> 
	            </li>
	            <!--<li class="nav-item dropdown">
	              <a class="nav-link mx-2 dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	                Company
	              </a>
	              <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	                <li><a class="dropdown-item" href="#">Blog</a></li>
	                <li><a class="dropdown-item" href="#">About Us</a></li>
	                <li><a class="dropdown-item" href="#">Contact us</a></li>
	              </ul>
	            </li>-->
	          </ul>
	        </div>
	      </div> 
  </nav>
</template>
<script>
	export default {
  	name:'NavbarComponent',
  }
</script>
<style>
  /*estilos adicionales*/
  img {
                max-width: 100%;
                }
</style>
