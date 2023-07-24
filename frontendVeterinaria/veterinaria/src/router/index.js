import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
//import listapropietarios from '../views/ListaPropietarios.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/lista',
    name: 'lista',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/ListaPropietarios.vue')
  },
  {
    path: '/nuevo',
    name: 'nuevo',
    component: () => import(/* webpackChunkName: "about" */ '../views/NuevoPropietario.vue')
  },
  {
    path: '/actualizar/:id',
    name: 'actualizar',
    component: () => import(/* webpackChunkName: "about" */ '../views/ActualizarPropietario.vue')
  },
  {
    path: '/listamascotas/:id',
    name: 'listamascotas',
    component: () => import(/* webpackChunkName: "about" */ '../views/ListaMascotas.vue')
  },
  {
    path: '/mascota/:id',
    name: 'mascota',
    component: () => import(/* webpackChunkName: "about" */ '../views/NuevaMascota.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
