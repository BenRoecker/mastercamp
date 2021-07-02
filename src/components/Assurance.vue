<template>
    <div id="center">
        <input id="textInput" class="custom" placeholder="Numero securite social">
        <ul>
            <li class="nom">
                <p class="medoc">Nom Medicament</p>
                <p class="description">
                    Description du medicament qui va etre long avec les maniere de le prendre et a quel moment le prendre.
                </p>
            </li>
            <li class="nom">
                <p class="medoc">Nom Medicament</p>
                <p class="description">
                    Description du medicament qui va etre long avec les maniere de le prendre et a quel moment le prendre.
                </p>
            </li>
        </ul>
        <div id="button">
            <button id="changementPage" onclick="pagePrecedent()">Page precedent</button>
            <button id="changementPage" onclick="pageSuivante()">Page suivante</button>
        </div>
    </div>
</template>

<script>
</script>

<style scoped>
    body {
        margin: 0;
        background-color: #70C869;
    }

    input {
        margin-top: 50px;
        height: 50px;
        width: 600px;
        border-radius: 25px;
        font-size: 36px;
        padding-left: 10px;
        border: none;
    }

    ul {
        list-style-type: none;
        display: flex;
        flex-direction: column;
        padding: 0;
        background-color: white;
        border-radius: 15px;
        border: none;
    }

    li {
        margin: 10px;
        max-width: 900px;
        height: 160px;
    }

    .medoc {
        font-size: 35px;
        min-width: 300px;
        margin: 0;
    }

    .description {
        font-size: 20px;
        margin: 0;
    }

    #center {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    #button {
        display: flex;
        flex-direction: row;
    }

    .nom {
        display: flex;
        flex-direction: row;
    }
</style>
