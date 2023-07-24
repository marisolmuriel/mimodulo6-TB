<template>
  <div class="home">
    
    <!-- carrosel -->
    <div>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="../assets/imagenes/BARRA1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="../assets/imagenes/BARRA2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="../assets/imagenes/BARRA3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

    </div>

    <!-- cuerpo -->
    <div class="container">
        <div class="row">
            <div class="col-sx-12 col-md-12 col-lg-12">
            <p align="center"><video src="../assets/imagenes/video.mp4" controls width="50%" autoplay loop></video></p> 
        </div>
        </div>
        <div class="row">
            <div class="col-sx-12 col-md-6 col-lg-6"  >
                <img  src="../assets/imagenes/dia2.jpg" width="90%">
            </div>
            <div class="col-sx-12 col-md-6 col-lg-6" >
                <img  src="../assets/imagenes/2.jpeg" width="60%">
            </div>
        </div>
        
        
        
        <div class="row">
            <div class="col-sx-12 col-md-6 col-lg-6">
                <img  src="../assets/imagenes/dia1.jpg" width="90%" >
            </div>
            <div class="col-sx-12 col-md-6 col-lg-6">
                <img  src="../assets/imagenes/1.jpg" width="70%" >
            </div>
        </div>
    </div>

  </div>
</template>

<script>
// @ is an alias to /src
//import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'HomeView',
  components: {
    //HelloWorld
  }
}
</script>
