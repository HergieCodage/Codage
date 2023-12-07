// Fonction pour générer des lancer de dé


document.addEventListener("DOMContentLoaded", () =>{

    let generateDice = document.getElementById("generateDice");
    generateDice.addEventListener("click", () => {
        let rollsNb = askRolls();
        let rolls = diceRoll(rollsNb);

        let totalRoll = 0;

        for(let i=0; i < rolls.length; i++){
            totalRoll += rolls[i]
        }
        console.log(rolls);
        console.log(totalRoll);
        displayDice(rolls, totalRoll);
        bestDice(rolls);
    })
});


// Fonction pour demander le nombre de roll à effectuer.
function askRolls(){
    let rollsNb = parseInt(prompt("Combien de lancer de dé ?"));
    while(isNaN(rollsNb)){
        rollsNb = parseInt(prompt("Erreur. Entrez bien un nombre"));
    }
    return rollsNb;
}


// Fonction pour trouver un nombre aléatoire. avec comme parametre le max.
function randNumber(max){
    let random = Math.ceil(Math.random()*max);
    return random;
}

// Fonction pour determiné les lancers et en sortir un tableau

function diceRoll(roll){
    let rolls = [];
    for(let i=0; i<roll; i++){
        rolls[i] = randNumber(6);
    }
    return rolls;
}


function bestDice(rolls){
    let high = 0;
    let highI = "0";

    for(let i=0; i<rolls.length;i++){
        if(rolls[i] > high){
            high = rolls[i];
            iHigh = i+1;
            console.log("high prend la valeur : " + high);
        } else {
            console.log("high garde sa valeur");
        }
    }

    console.log("high est : " + high + " à l'emplacement : " + highI);
}
// Fonction pour afficher les lancers avec des images et le résultat à l'écran.

function displayDice(rolls, totalRoll){
    let dices = document.getElementById("dices");
    dices.innerHTML = "";


    for(let i = 0 ; i<rolls.length;i++){
        let div = document.createElement("div");
        let img = document.createElement("img");
        img.setAttribute("src", "img/"+rolls[i]+".png");
        div.appendChild(img);
        dices.appendChild(div);
    }

    let div = document.createElement("div");
    let img = document.createElement("img");
    img.setAttribute("src", "img/=.png");
    div.appendChild(img);
    dices.appendChild(div);

    let resul = document.createElement("h3");
    let resulText = document.createTextNode(totalRoll);
    resul.appendChild(resulText);
    dices.appendChild(resul);
}


