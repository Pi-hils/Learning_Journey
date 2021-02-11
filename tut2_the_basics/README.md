## Tutorial 2
 Need knowledge in HTML and CSS. Knowing syntax is great
 <br>

 ### Goals
 - make first page
 - add buttons
 - add some words
 - use js in render part - jsx

In react, everything starts happening in the src folder. We start with App.js.

In app.js, we, we add button but typing inside the function
```
....
return <div className='App'>
    <button>Click Me</button>
    <h1>Hello World</h1>
```

# Creating a variable
Functional component returns some HTML and in the end, we `export defaukt app;`. This means the function App will be read with everything inside. Var/const/let can be added but when rendering inside the return HTML(jsx), you must include {}. Check this out in react-tut on Github.
```
function App(){


}
```

## Creating a function
Inside your name function App(), you can add a js function which actually does something, for example you want to see your name being alerted when you press the button
```
function App() {

  var myName="Hilda Amponsah"

  function alertingNames(){
    alert(myName);
  }

  return (
    <div className="App">
    <button onClick=(alertingNames)>Click Me</button>
    <br></br>
    <input type='text' />
    <br></br>
    <h1>Hello World, my name is {myName}</h1>
    </div>
  );
}
```