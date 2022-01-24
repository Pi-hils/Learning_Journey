<h2>What is it?</h2>
Node is not a langugae but runtime that allows javascript to run on a server. A way for devs to write a full stack on a server

## How it works
#### Step One
Visit a url on internet pointing to the server `http//localhost:...`
[![Image from Gyazo](https://i.gyazo.com/61be99fcd7da4ace076b23729f57f6df.png)](https://gyazo.com/61be99fcd7da4ace076b23729f57f6df) <br>
When request is received, we can use node to handle the request and read a file of server's file system 
[![Image from Gyazo](https://i.gyazo.com/77bd3eb9cebbf3da5a411135d78b60a4.png)](https://gyazo.com/77bd3eb9cebbf3da5a411135d78b60a4)
and respond to the client so they can view the html in broswer
[![Image from Gyazo](https://i.gyazo.com/78c4ef9f003c5c2ee3708ab08d6db3a4.png)](https://gyazo.com/78c4ef9f003c5c2ee3708ab08d6db3a4)

#### Step two
<u>Installation</u><br>
check if node is installed by running `node -v.
If it is not installed, install.

#### Step Three
<u>Hello World</u><br>
> In terminnal, type `node ` - this allows us to go on REPL mode and type javascript there like a console<br>
> To exit, press ^C again or ^D or type .exit<br>
> Create an index.js file(in root) and write `console.log('Hello World');, in terminal, run `node .`(depending where your file is) and it should execute what you had written in index

#### Step Four
<u>Know your runtime</u><br>
 Node.js works similarly to how javascript run on browser but there are certain differences. Example, 1. Node has a lot of identifiers, one is `console`, used to log out code into the console.
 2. `global`: available throughout the entire node process e.g
 ```
 console.log(global.luckyNum);
 global.luckyNum = '23';
 console.log(global.luckyNum);
 ```
 As this is 'global', it can be accessed anywhere within our code. Can check this by running `node .` (from index.js) to check the output.
 3. `process` :gives you access to the currently running node process

 In index.js
 ```
console.log(process.platform);

#OR
console.log(process.env.USER);
 ```

#### Step Five
<u>How do Events work</u><br>
Just need to know how events and callbacks work. In most cases, we will listen to events. Before a node process finishes, it emits an event named 'exit'. We can listen to this event using 'on' and register a callback function as the second argument. 

[![Image from Gyazo](https://i.gyazo.com/1fc02454a90aaf44729c2bf251c20c8b.png)](https://gyazo.com/1fc02454a90aaf44729c2bf251c20c8b)

When the exit event happens, node will run the function (_this is where the name 'callback' comes from. Th function is not called the first time node.js sees it. It is only called later in the future when 'exit' occurs_).
<br>
<u>Creating your own</u><br>
Import EventEmitter from the Events (builts in node)module. Create a custom eventsEmitter by instantiating the class and register a callback the fires <u>on</u> the lunch event.

[![Image from Gyazo](https://i.gyazo.com/48a8bb36edf37d49c5e2651025d93cf9.png)](https://gyazo.com/48a8bb36edf37d49c5e2651025d93cf9)

Once that callback is registered, you can call the eventEitter.emit and the event nname and that triggers the callback function to run

#### Step Six
<u>File System</u><br>
Fs- Can read, write and delete
Everytime you see 'Sync', think blocking. Everything is being blocked unntil the file is file that is blocking everything has been rendered. Reading the file might take long depending on how much conntent is in the file.

[![Image from Gyazo](https://i.gyazo.com/1f060c2fba3c7672bab3ee8bde285aca.png)](https://gyazo.com/1f060c2fba3c7672bab3ee8bde285aca)
(As seen, the second console.log won't run until the file has been read).

This can change however, by making your code none blocking by refactoring yur code to a callback.

[![Image from Gyazo](https://i.gyazo.com/f45bb90d81fb6ba0ff09f28ebc977a50.png)](https://gyazo.com/f45bb90d81fb6ba0ff09f28ebc977a50)

In the readFile, we call the same arguement ('.[filename.txt]', 'utf8'); but this time, you include a callback function as the third arguement. 
'err' - gives us an error if there is any issue, else renders what in in txt file.

#### Promises
Used when code starts gettinng complicated so instead of 'callbacks' we use <u>async</u>

#### Step Seven
<u>Modules & npm</u>: exports code <br>
The traditional way to export a module is:
COMMON JS `require()`
ES Module  import/export
1. Create a file to service your module, e.g mu-module.js
2. In your Index.js, create a variable and import using require
```
const myModule = require('./my-module');
console.log(myModule);
```
As there is nothing inside your my-module, it is useless now.
4. In your my-module file, insert
```
module.exports = {
  science: 'enzymes'
}
```
If you now run `node .` in node console, it should output science: 'ennzyme'

<u>Using someone else's file</u>
In your terminal(mode mode), type `npm init -y`.
This will install package.json file in root. Keeps track of dependencies used(there will be no dependency ). To change this, get <u>express</u> `npm install express` -minimal web application. Allows multiple depndency in a project and reinstall in another system.
<br>
We can now import this(in index.js) by name in our js code by requiring 'express'
```
const express = require('express');
```

> Express allows us to create different <u> url and endpoint</u> taht a user can navigate in the browser.

> Express gives us 2 parameters to work with, a request and response.
[![Image from Gyazo](https://i.gyazo.com/5bea542ab4b5cd8a35122902de675320.png)](https://gyazo.com/5bea542ab4b5cd8a35122902de675320)

Simple HTML file
[![Image from Gyazo](https://i.gyazo.com/2add7f8ea98e403c46079332b50afbb8.png)](https://gyazo.com/2add7f8ea98e403c46079332b50afbb8)

Now we inform express to start <u>listening to incoming request
</u>
start by defining a port, normally come from a node env variable  

```
app.listen(process.env.PORT || 3000, () => console.log(`App available on http://localhost:3000`))

```
Run `node .` on cmd line and you should see the localhost:3000. Check browser
### Useful link
- [Node - youTube]https://www.youtube.com/watch?v=ENrzD9HAZK4