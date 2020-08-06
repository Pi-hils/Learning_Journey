
ES5
Var is used in ES5
variables declared with **var** are <u>function</u> scope
var name5 = 'Jane Smith'
var age5 = 25;
name5 = 'Jane Miller'
console.log(name5);

ES6
const name6 = 'Lily Smith'
let age6 = 23;
name6 = 'Lily Miller' #this will give an error as a constant was used and hence can't change it. It is imutable
console.log(name6);     

const :is used to declare variable and are immutable
let: is used to change the value of of var
variables declared with let are <u>blocked</u> scope

## Use Strict
'use strict';
x = 3.14;         #This will cause an error (if x has nnot been declared, should be rather var x =3.14)

'use strict';
x = 3.14
delete x;          #This will cause an error. You cannot delete a variable with 'use strict'

Defining a property more than once, is not allowed

'use strict';
var x = {p1:10, p1:20};  #This will cause an error
