function mappaturaGen(){
    var cartolina = document.getElementsByClassName("indici");
    for ( var i = 0, ilen = cartolina.length - 1; i <= ilen; i++){
        cartolina[i].setAttribute("id", (i+1));
    }
}

function nascondi(j){
    var indice = j;
    var indiceCart;
    
    if (indice <= 7){
        indiceCart = "r81" + indice;
        modifica = document.getElementById(indiceCart);
        modifica.setAttribute("style", "display:none;");
        var principale = document.getElementById("r81");
        principale.setAttribute("style", "display:block;");

    } else if (indice >= 12){
        indice = indice - 11;
        indiceCart = "r94" + indice;
        modifica = document.getElementById(indiceCart);
        modifica.setAttribute("style", "display:none;");
        var principale = document.getElementById("r94");
        principale.setAttribute("style", "display:block;");
    }
}

function evidenzia(j){

    var indice = j;
    var indiceCart;
    
    if (indice <= 7){
        var cartolina = document.getElementsByClassName("mappatura");
        for ( var i = 0, ilen = cartolina.length - 1; i <= ilen; i++){
            cartolina[i].setAttribute("style", "display:none;");
        }
        indiceCart = "r81" + indice;
        modifica = document.getElementById(indiceCart);
        modifica.setAttribute("style", "display:block;");

    } else if (indice >= 12){
        indice = indice - 11;
        var cartolina1 = document.getElementsByClassName("mappatura1");
        for ( var i = 0, ilen = cartolina1.length - 1; i <= ilen; i++){
            cartolina1[i].setAttribute("style", "display:none;");
        }
        indiceCart = "r94" + indice;
        modifica = document.getElementById(indiceCart);
        modifica.setAttribute("style", "display:block;");
    }
}

function caricamentoId() {
    // associazione id all'elemento "span"
    var el = document.getElementsByClassName("popuptext")
    for (var i = 0, ilen = el.length - 1; i <= ilen; i++) 
    {
        el[i].setAttribute("id", ("myPopup" + i));
      
    }
    // associazione id all'elemento "a"
    var ael = document.getElementsByClassName("popup")
    for (var i = 0, ilen = ael.length - 1; i <= ilen; i++) 
    {
        ael[i].setAttribute("id", ("popup" + i));
       
    }
    mappaturaGen();
    evidenzia();
    nascondi();
}

function myFunction(obj) {
    var popup = document.getElementById(obj.id);
    var figlio = popup.childNodes[1];
    figlio.classList.toggle("show");
}
function generale(){
    caricamentoId();
}
window.onload = generale();