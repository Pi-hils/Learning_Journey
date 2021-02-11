# Component - Tut 3

1. What are components?
2. Reusing components
3. Why it is important


With components, if you wish to repeat a code, you can 
1. create a folder inside src
2. In the folder called `Componets`, then create a file and name it name.js(with a capital)
3. Using a functional component - Type rfc inside this file and you should get..
```
IN HelloWorld.js

import React from 'react';

export default function helloWorld() {
  return (
    <div>
      Hello Developers
    </div>
  )
}
```
```
IN App.js
import React from 'react';
import HelloWorld from './Components/HelloWorld'

function App() {

  var myName = "Hils"

  function alertingNames(){
    alert(myName)
  }
  return (
    <div className="App">
    <h1>Hello there, {myName}</h1>
    <HelloWorld />
    <HelloWorld />
    <HelloWorld />
    </div>
  );
}

export default App;

```
