# Debugging 2

Define 'debugging' as the process of eliminating bugs from an expected program output
Explain the mantra 'Tighten the loop; Get visibility'.
Use the mantra to resolve bugs across the web stack.

What are the ways in which we can gt more visibilty over a bug?
- Stack trace (path to the file that had the error, and the execution of the program).
- Printing things out with p, puts.
- Commenting things out - does the program still run?
- conditionals & loops: p the statement to make sure you have gotten to the certain line. 
- /1 is the operation, /2 is this operation, getting visibility over what is breaking (identifying pieces of code in the terminal).
- The error type and/or number (e.g NilClass, arguments).
- Talk to people
- Rewrite your code

## Web
- Testing the app.rb out itself: running the web version of your code to test it out
- Check in the Chrome dev tools console for more information about Network etc.
- Sinatra error messages
- Look in terminal - Shotgun messages

_This workshop:_
- Running rspec and reading test fail messages
- Load the web page. Are there any error messages here? 
- Check out Chrome devtools, specifically Network 
- The usual tools: printing things out, getting visibility 

_Randoms_
** srand - print out randomness - setting something for later.
[![Image from Gyazo](https://i.gyazo.com/4a0007a0c6bc812f612387f8e53dc0df.png)](https://gyazo.com/4a0007a0c6bc812f612387f8e53dc0df)

<!-- 
lib - app.rb
spec - features -->

**404 page**
- Go into your dir (cd "dirname")
- type 'shotgun' in your terminal to run the code for your localhost. 
- Check the port ID
- If error message includes homepage, try fix that first.
if you get this error below oon your localhost
[![Image from Gyazo](https://i.gyazo.com/7582999d7c3cb9cbaa3298513dc83354.png)](https://gyazo.com/7582999d7c3cb9cbaa3298513dc83354)

- Inspect the page (can also use DevTool) 
- Can try the suggestion sinatra gives you on the error page (e.g get '/' Hello World end)

