self.onmessage = function(message){
console.log(message.data);
 let shuma=0;
         for(i=0;i<=10;i++){
          shuma+=i;
    }
       postMessage(shuma);
        
};
// ka shanca qe errori o tek derectioni 
