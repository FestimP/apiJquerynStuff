$(document).ready(()=>{
let settings={
    url: "https://api.jsonbin.io/b/627f6499019db467969e04b5/3",
    type: 'GET',
    dataType: 'json',
    beforeSend: function(xhr) {
      xhr.setRequestHeader("secret-key", "$2b$10$THfCFaegRLfZwGum8pjCl.wE7HJTL6SU9UbDeZ7NIcLBxRV3eFPf6");
    },
    statusCode:{
      401: function(){
        toastr.info("faqja nuk u gjet");
    },
    200:function(){
      toastr.info("Aplikuat me sukses");
    },
    },
    // success: function(json) {
    //   // let text=json.name +" " + json.profesioni;
    //   // $("#klasa").text(text);
    //  console.log (json) ;
    //  $(".jason-data").append("<p class='bg-warning'>" + data[0].name + "</p>");
     
    // },
    // error: function() {
    //   $(".jason-data").append("<p class='bg-warning'> kerkesa deshtoi </p>");
    // }
}
   
 $.ajax(settings)
 .done(function(json){
  appendData(json);
 })
 .fail(function(err){
  failData(json);
 })
 .always(function(){
  toastr.info("Per gjdo evantualitet , do te  njoftohuni ne email");
 })
 function alwaysData(data){
  toastr.info("Per gjdo evantualitet , do te  njoftohuni ne email");
 }
 function appendData(data){
  $(".jason-data").append("<p class='bg-info p-5'>" + data[0].name + " " + data[0].profesioni + "</p>");
 }
 function failData(data){
  $(".jason-data").append("<p class='bg-warning'> kerkesa deshtoi </p>");
 }

 const axios = require("axios");

const options = {
  method: 'GET',
  url: 'https://tasty.p.rapidapi.com/recipes/auto-complete',
  params: {prefix: 'chicken soup'},
  headers: {
    'X-RapidAPI-Host': 'tasty.p.rapidapi.com',
    'X-RapidAPI-Key': '0bdab82294mshe433bee16817f79p1bc349jsn21f359c42326'
  }
};

axios.request(options).then(function (response) {
	console.log(response.data);
}).catch(function (error) {
	console.error(error);
});
console.log(response);
console.log(response.results);
let src= response.results[7].items[0].thumbnail_url;
 $.ajax(settingsObj).done(function(){

 });
 response.results.forEach((item)=>{
console.log(item.type);
//console.log(item.items[0].name);
// item.items.foreach((element)=>{
//   console.table(element.thumbnail_url)

// });
 });
 //item.items.foreach((iitem)=>{
  //  console.table(iitem.thumbnail_url)
  
  // });
// osht e pa perfundume, detir shpie me kry(slektoje tek opcioni jonodejs axios , por zgjedhe javascript:jquery)
 $("#bg-img").append("<img src=''"+ src + "'class='img-custom'/>");
});