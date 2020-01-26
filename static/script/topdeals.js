function clone(){
    var card = document.getElementById("singleCard");
    var cloneCard = card.cloneNode(true);
    document.getElementById("top-deals-cards").appendChild(cloneCard);
}

function createTopDeals(){
    var i;
    for (i = 0; i < 11; i++) {
        clone();
        console.log(document.getElementById("top-deals-cards"));
    }
}

