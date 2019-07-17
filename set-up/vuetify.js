import Vuetify from "vuetify";
import "vuetify/dist/vuetify.min.css"; // Ensure you are using css-loader
import colors from "vuetify/es5/util/colors";

export default function setUp(Vue) {
  Vue.use(Vuetify, {
    theme: {
      // primary: colors.teal,
      // secondary: colors.lightBlue,
    }
  });
}
