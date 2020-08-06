#### Notes

Repo taken from [here](https://github.com/jonasschmedtmann/complete-javascript-course)

// var firstName = 'Hilda';
// console.log(firstName);

// var lastName = 'Amponsah';
// var age = 23

// console.log(lastName + ' ' + age);

// var job, isMarried;
// job = 'Computer Scientist';
// isMarried = false;

// console.log(firstName + ' ' + lastName + ' ' +'is'+ ' '+ age+ ''  + 'and ' + 'is a' + ' ' + job + '. Is she married yet?' + ' ' + isMarried);

// var lastname = prompt('what is the secret code?The last name?')
// var firstname = prompt('what is the secret code?The first name?')

// var year, yearHils, yearJohn
// now = 2020
// yearHils = now - 23;
// yearJohn = now - 33;

// ageJohn = 28;
// ageHils = 23;

// console.log(yearHils);

// console.log(now *2);
// console.log(now/2);
// console.log(now+23)

// //Logical Operator

// var johnOlder = ageJohn > ageHils;
// console.log(johnOlder)

// //typeof operator - This typeof tells you what object you are working with
// console.log(typeof johnOlder); //boolean
// console.log(typeof ageJohn);
// var x;

//BOOLEANS
// var firstName = 'Hilda';
// var civilStatus = 'single';

// if (civilStatus === 'married') {
//   console.log(firstName + 'is married!');
// }else {
//   console.log(firstName +''+ 'will soon marry :)');
// }


// //=== three Equal signs gives a booleann
// var isMarried = true;
// if (isMarried) {
//   console.log(firstName + 'is married!');
// }else {
//   console.log(firstName +''+ 'will marry soon :)');
// }

// Array
var names = ['Hils', 'Candi', 'Pels', 'Ama', 'Gina'];
var years = new Array(23, 23, 22, 19);

console.log(names[0]);
// console.log(names.length);

names.push('Aisling');
names.unshift('Girls');  //added at the start
names.pop(); //remove the end
names.shift(); //remove the start
console.log(names)

console.log(names.indexOf('Hils')); //if something is not present, it will return -1 , try inputing 'John

var ginaHere = names.indexOf('Gina') === -1 ? 'Gina is NOT on the list' : 'Gina IS on the list'
console.log(ginaHere);