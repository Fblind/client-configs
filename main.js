import Vue from "vue";
import App from "./App.vue";
import "./registerServiceWorker";

Vue.config.productionTip = false

// Vuetify
import setUpVuetify from "./set-up/vuetify";
setUpVuetify(Vue);

// Router
import setUpRouter from "./set-up/router";
const router = setUpRouter(Vue);

new Vue({
  render: h => h(App),
  router,
}).$mount('#app')
