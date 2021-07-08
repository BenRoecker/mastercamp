import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    users: [],
    id: 0,
    component: 'home',
    count: 0
  },
  mutations: {
    tomedecin (state, nom) {
      state.component = nom
    }
  },
  actions: {
  },
  modules: {
  }
})
