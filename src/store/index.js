import { createStore } from 'vuex'
export default createStore({
  state: {
    users: [],
    id: 0,
    component: 'home'
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
