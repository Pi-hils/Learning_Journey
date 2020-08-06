### Difference between Var and Let

> Variables with the <u>var</u> keyword can be overwritten variable declarations without an error.
```
var camper = 'James';
var camper = 'Tom';
console.log(camper);
// logs 'Tom'
```
The camper variable is originally declared as James and then overridden to be Tom. As this behavior does not throw an error, searching and fixing bugs becomes more difficult.

> A new keyword called <u>let</u> was introduced in ES6 to solve this potential issue with the var keyword. If you were to replace var with let in the variable declarations of the code above, the result would be an error.
```
let camper = 'James';
let camper = 'Tom'; #error message thrown in the console of browser
```

### Comparing Scopes of var and let keywords
> When a variable is declared with <u>var</u> keyword, it is declared globally/locally of declared inside a function.
> <u>Let</u> does the same however if declared inside a block, expression/statement, the scope is limited to that block, expression/statement.
```
var numArray = [];
for (var i = 0; i < 3; i++) {
  numArray.push(i);
}
console.log(numArray);
# returns [0, 1, 2]
console.log(i);
# returns 3
```
> With <u>var</u> being used, the 'i' is declared globally. This behavior will cause problems if you were to create a function and store it for later use inside a for loop that uses the 'i' variable. This is because the stored function will always refer to the value of the updated global i variable

```
var printNumTwo;
for (var i = 0; i < 3; i++) {
  if (i === 2) {
    printNumTwo = function() {
      return i;
    };
  }
}
console.log(printNumTwo());
// returns 3
```

> As we can see, the printNumTwo printed 3, rather than 2 because the value assigned to i was updated and the printNumTwo() returns the global i and not the value i (when the function was created inn the for loop).