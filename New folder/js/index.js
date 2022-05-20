$(document).ready(()=>{

    $(".btn.btn-success").on("click",function(){
        $("body").toggleClass("bg-green");
    });

    $(".btn.btn-primary").on("click",function(e){
        let worker= new Worker("/js/worker.js");
        worker.postMessage("Pershendetje");
        worker.onmessage=function (message){   
        $(".shuma-totale").append(message.data);
        alert("shuma e nr te dhene:"+shuma);}
    });
});