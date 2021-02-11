## Props - Tut 4

Repeating something is great and can easily be done with compents. However, what happens when you need different outcomes for these repeated components, e.g a table/form with multiple individuals?\
This is where we introduce 'props' / properties.
They help us to alternate repeated functions when needed. Changes take place between your Components folder and your App.js.

In Components/HelloWorld.js
```
import React from 'react'

export default function HelloWorld({ name, email, role }) {
  return (<div>
  <h3>Name: {name} </h3>
  <h3>Email: {email} </h3>
  <h3>Role: {role} </h3>
    <hr />
  </div>

  )
}

```

In App.js
```
import React from 'react';
import HelloWorld from './Components/HelloWorld'

function App() {

  return (
    <div className="App">
    <h1>Hello there!</h1>
    <HelloWorld name="Hils" email="girlCoder@techworld.com" role="Fullstack dev"/>
    <HelloWorld name="Mari" email="girlTherapist@therapist.com" role="Child Therapist"/>
    <HelloWorld name="Pels" email="girlBoss@bossorld.com" role="CPO"/>
    </div>
  );
}

export default App;

```