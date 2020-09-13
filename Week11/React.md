## React
[Repo]
1. Install node js - check by running `node -v` in terminal
2. Check `npm -v` 
2. Install yarn - check by running `yarn -v` in terminal
3. Download [React Developer Tool as an extention](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi/related?hl=en)
4. Head to [Create React App](https://reactjs.org/docs/create-a-new-react-app.html) and tyoe
```
npx create-react-app [my-app(whatever you want)]
```
Once completed, begin by following the innstructions in your terminal.
1. cd [name of your react file]
2. npm start
This will open up our React application and will run on local dev server. Keep your terminal on the same page so it doesn't get lost. Open another terminal if you wish to do anything
3. Open your IDE(VScode)
4. Head to src/App.js - This page is what you see represented on the localhost now. You can add a paragraph <p>Changes made</p> to see.

> App.js: React is made out of components.
The parent component is the App() componenny (line 5).
When you want to use 'class', in React, it is <u>className</u> instead.

> Imports (at the top): if you wish to import things from other files

> In src/index.js, the (root) -line11 can be found in the public/index.html (the html that will be rendered to the client). In index/html - check <body></body>.

> In src/App.js, get rid of lines 7-25 (after return .. last </div>. Insert 
<div> </div> from where you deleted the elements. JSX should always ebe wrapped in at least one element.

<u>Naming convention in React</u>
Always name them with a capital and CamelCases if two words