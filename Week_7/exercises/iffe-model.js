//Immediately Invoked Function Expression(IIFE)

//Exercise 1
(function(){
  console.log('Jadore un color bleu')
})();


(favColour = function(col = 'bleu'){
  console.log('Jadore le color ' + col)
})();
favColour('rouge');


// Exercise 2

var a = 'hello';          //this will be executed second (line:24)

(function() {
  var a = 3;              //this will be executed first
  console.log(a);
})();

console.log(a);          


// Exercise 3 Closures

function makeFunc() {
  var name = 'JS Nugget';

  function displayName(){
    console.log(name);
  }

  return displayName;
}
var myFunc = makeFunc();
myFunc();

//Exercise 3

var counter =(function(){         //lines 43(after functions)-lines 59, is a annonymous function.
  var privateCounter = 1;         //private function from lines 44-46
  function changeBy(val) {
    privateCounter += val;
  }
  return{                         //lines 48-59 is a return of the funtion(lines 43) but makinng it public.
    increment: function(){
      changeBy(2);                  //changeBy method from the private function(45) is be used
    },
    decrement: function(){
      changeBy(-1);
    },
    value: function(){
      return privateCounter;
    }
  };
})();

console.log(counter.value(4));
counter.increment();
counter.increment();
console.log(counter.value())
counter.decrement();
counter.decrement();
