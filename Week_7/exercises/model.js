var iife = (function () {

  //Object
  var example = {};

  //private
  function test() {
    alert("Hola")
  };

  //public
  example.alert = function (){
    alert("hello")
  }

  return example

}());

// () the parenthesis at the end is what invokes iife. If you take the () away, the alert won't work