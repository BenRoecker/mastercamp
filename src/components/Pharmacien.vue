<template>
    <div id="main">
        <input id="textInput" class="custom" placeholder="Numero securite social">
        <ul>
            <li>
                <input type="checkbox" />
                <div class="text">
                    <p class="nom">Nom du medicament</p>
                    <p class="comment">commentaire assez long pour expliquer comment le prendre.</p>
                </div>
            </li>
            <li>
                <input type="checkbox" />
                <div class="text">
                    <p class="nom">Nom du medicament</p>
                    <p class="comment">commentaire assez long pour expliquer comment le prendre.</p>
                </div>
            </li>
        </ul>
        <button>Valider</button>
    </div>
</template>

<script>
export default {
  name: 'Pharmacien'
}
</script>

<style scoped>
    input {
        margin: auto;
        height: 25px;
        width: 25px;
        margin: 10px;
    }
    #textInput {
        margin-top: 50px;
        height: 50px;
        width: 600px;
        border-radius: 25px;
        font-size: 36px;
        padding-left: 10px;
        border: none;
    }
    #main {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    ul {
        background-color: white;
        border-radius: 15px;
        border: none;
        list-style-type: none;
        width: 80%;
        padding-left: 20px;
    }
    li {
        display: flex;
        flex-direction: row;
        align-items: center;
        margin: 20px;
    }
    .text{
        display: flex;
        flex-direction: row;
        align-items: baseline;
    }
    .nom{
        font-size: 24px;
        margin-right: 20px;
    }
    .comment{
        font-size: 18px;
    }
    button {
        height: 50px;
        width: 200px;
        font-size: 40px;
        border-radius: 25px;
        border: none;
        background-color: #303030;
        color: white;
    }
</style>
