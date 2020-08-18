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


