<template>
  <div class='Medecin'>
    <h1>Nouvelle Ordonnance</h1>
    <drizzle-contract-form id='test'
      contractName='Ordonnance'
      method='createPrescription'
      :placeholders="['Nom du médicament','Commentaire','numéro de sécurité sociale']"
    />
    </div>
</template>

<script>
import { mapGetters } from 'vuex'
export default {
  name: 'Medecin',
  data () {
    return {
      newmedoc: {
        id: '0',
        name: '',
        prise: ''
      },
      medoc: [],
      security: ''
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
  },
  computed: {
    ...mapGetters('drizzle', ['drizzleInstance', 'isDrizzleInitialized']),
    ...mapGetters('contracts', ['getContractData'])
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
    #test {
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    #test in{
      width: 500px;
    }
</style>
