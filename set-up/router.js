// Docs https://router.vuejs.org/
import VueRouter from "vue-router";
// import App from "../screens/App";

export default function setUp(Vue) {
  Vue.use(VueRouter);
  const routes = [
    // {name: "main", path: "/", component: App},
  ];
  return new VueRouter({
    routes,
  });
}
