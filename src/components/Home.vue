<template>
    <div class="home">
        <img src="../assets/Epione_logo.png" />
        <input id="textInput" v-model="input" class="custom" placeholder="Enter private key">
        <button @click="lol">Connexion</button>
    </div>
</template>

<script>
import store from '../store'
export default {
  name: 'Home',
  props: {
    msg: String
  },
  data () {
    return {
      input: '',
      id: store.state.id
    }
  },
  methods: {
    lol: function () {
      this.$store.commit('tomedecin', this.input)
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    div {
        text-align: center;
        display: flex;
        align-items: center;
        flex-direction: column;
    }
    input{
        margin-top: 50px;
        height: 50px;
        width: 600px;
        border-radius: 25px;
        font-size: 36px;
        padding-left: 10px;
        border: none;
    }
    button{
        height: 42px;
        width: 200px;
        border-radius: 21px;
        border: none;
        font-size: 36px;
        margin-top: 25px;
    }
</style>
