<template>
  <footer class="text-center py-4 my-4 border-top">
   <p>Veterinaria Mascota Feliz....!</p>
   <div class="row">
        <div class="col-sx-12 col-md-4 col-lg-4">
              <img v-bind:src="require('@/assets/imagenes/CLINICA.png')" />
        </div>
        <div class="col-sx-12 col-md-4 col-lg-4">
            <img  v-bind:src="require('@/assets/imagenes/dia6.jpg')">
        </div>
        <div class="col-sx-12 col-md-4 col-lg-4">
            <img  v-bind:src="require('@/assets/imagenes/dia7.jpg')" >
        </div>
        
    </div>
  </footer>
</template>

<script>
  export default {
    name: 'FooterComponent',
  }
</script>

<style>
  /*estilos adicionales*/
  img {
                max-width: 100%;
                }
</style>
