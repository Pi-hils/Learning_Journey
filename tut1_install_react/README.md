## React tutorial part 1 - Installing
In your terminal, `cd [into your desired folder]` and type
```
npx create-react-app .
```
(This creates all your app). The . is where the name of your app will go or you can just leave it as .<br>
Restart your folder.

<br>
The most important file is the src, but inside it, remove the following:
1. setupTests.js
2. serviceWorker.js
3. index.js
4. logo
6. App.css
7. App.test.css

Go into your `App.js` and delete the following imports
- import logo
- import './App.css';
-  Remove everything in between the first and last <div></div>, leaving the function with return <div className='App'>Hello React</div>

Go into your `index.js` and delete the following imports
- Import 'index..'
- import * as serviceWorker from ...
- import 'webVitals'....
*The commented and last line in index.js - serviceWorker...


Type the following in your terminal to start React on your localhost
`npm start` 