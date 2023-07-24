import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
//importando axios
import axios from 'axios'
import VueAxios from 'vue-axios'

//createApp(App).use(store).use(router).mount('#app')
//incorporando axios en la aplicacion
createApp(App).use(VueAxios,axios).use(store).use(router).mount('#app')
