## JavaScript Module Patterns

Module Patterns are mainly used to keep particular codes independent fro each other. Allows you to break individual codes apart.
Can provide encapsulation

 //Before ES5
 (function(){

   //declare private variables and/or functions

   return{
     //declare public variables and/or functions  
   }

//the public variable immediately invoked here, in the ()
 })();

//After ES6
/* lib/module.js */

class ShoppingDataType {
  constructor(){
    //private properties
    this.shoppingList = ['rice','bread', 'eggs']
  }

  //public methods
  getShoppingList() {
    return this.shoppingList.join(",")
  }

  //we can also add an item (new method) and that will push the item onto the array
    addItem(item) {
      this.shoppingList.push(item)
    }
}

// this is goinng to export our  ShoppingDataType  class so we can use it in a different class
export default ShoppingDataType;


/* main.js */
import ShoppingDataType from 'libs/module';

var shoppinng = new ShoppingDataType;
console.log(shopping.getShoppingList());




## Note
* When you create a variable outside of your function, ensure you have a semi-colon (;), else you will get an error that whatver your var is equal to isn't a function

[![Image from Gyazo](https://i.gyazo.com/faff7baf38dc69eeb988cc1a974785ae.png)](https://gyazo.com/faff7baf38dc69eeb988cc1a974785ae)
_Without a semi-colon(;) after 'hello'_


[![Image from Gyazo](https://i.gyazo.com/bd9b9488004d9dfe3b90908f0e8b1c22.png)](https://gyazo.com/bd9b9488004d9dfe3b90908f0e8b1c22)
_With semi-colon(;) after var._