<template>
  <component v-if="isDrizzleInitialized" v-bind:is='component'/>
  <div v-else>
    Loading application...
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
import store from './store/index'
import Home from './components/Home.vue'
import Medecin from './components/Medecin.vue'
import Assurance from './components/Assurance.vue'
import Pharmacien from './components/Pharmacien.vue'
export default {
  name: 'App',
  components: {
    home: Home,
    medecin: Medecin,
    assurance: Assurance,
    pharmacien: Pharmacien
  },
  computed: {
    ...mapGetters('drizzle', ['drizzleInstance', 'isDrizzleInitialized']),
    ...mapGetters('contracts', ['getContractData']),
    component () {
      return store.state.component
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background-color: #70C869;
  width: 100%;
  padding-bottom: 100px;
}
</style>
