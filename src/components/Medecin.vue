<template>
  <div class="Medecin">
    <h1>Nouvelle Ordonnance</h1>
      <input id="social" type="text" placeholder="Numero de securite social" data-value-missing="required" required />
        <ul id="list">
          <li>
            <form id="new" method="post" class="style_form"  onsubmit="return false">
              <input v-model="newmedoc.name" type="text" placeholder="Nom du medicament" id="name" data-value-missing="required" required/>
                <textarea  v-model="newmedoc.prise" type="text" placeholder="prise et commentaire" id="prise" data-value-missing="required" required/>
                <button id="button" v-on:click="add_to_tab"> Ajouter </button>
            </form>
          </li>
          <li v-for="item in medoc" v-bind:key="item.id">
            <p class="name">{{ item.name }}</p>
            <p class="prise">{{ item.prise }}</p>
            <button v-on:click="medoc.splice(index, 1)">Supprimer</button>
          </li>
        </ul>
        <button>Envoyer</button>
    </div>
</template>

<script>
export default {
  name: 'Medecin',
  data () {
    return {
      newmedoc: {
        id: '0',
        name: '',
        prise: ''
      },

      medoc: []
    }
  },
  methods: {
    add_to_tab: function () {
      this.medoc.push(this.newmedoc)
      this.newmedoc = {
        id: this.newmedoc.id + 1,
        name: '',
        prise: ''
      }
    }
  }
}
</script>

<style scoped>
    h1{
        color: #FFFFFF;
        margin: auto;
        font-size: 40px;
        padding-bottom: 40px;
    }
    li{
        background-color: #FFFFFF;
        border-radius: 15px;
        border: none;
        padding: 10px;
        width: 30%;
        box-shadow: 5px 5px 5px;
        margin: 1%;
    }
    ul {
        list-style-type: none;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
    }
    .Medecin{
        display: flex;
        flex-direction: column;
    }
    button{
        height: 50px;
        width: 120px;
        margin: auto;
        border-radius: 15px;
        border: none;
    }
    #name {
        border-radius: 15px;
        padding: 5px;
        width: 200px;
    }
    #new{
        display:flex;
        flex-direction: column;
    }
    #prise {
        border-radius: 15px;
        padding: 5px;
        margin-top: 10px;
    }
    #button {
        width: 100px;
        margin: auto;
        margin-top: 10px;
        border-radius: 15px;
    }
    #social {
        margin: 100px;
        height: 30px;
        width: 600px;
        border-radius: 15px;
        font-size: 24px;
        padding-left: 10px;
        border: none;
        margin: auto;
    }
    .name{
        font-size: 20px;
    }
</style>
