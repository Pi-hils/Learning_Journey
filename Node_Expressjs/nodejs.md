What can node do
Send a url on the internet that points to your server<br>
Chrome ----->(http://URL)----> Nodejs

When request is received, we use nodejs to handle the request and read a file from the file system 
[![Image from Gyazo](https://i.gyazo.com/094e7b109b6d0f005d34f9735734c5f4.png)](https://gyazo.com/094e7b109b6d0f005d34f9735734c5f4)
<br>

And respond back to the client so they can view the html in the browser
[![Image from Gyazo](https://i.gyazo.com/97edd7cae96ad56a09dc25f70a14f34d.png)](https://gyazo.com/97edd7cae96ad56a09dc25f70a14f34d)

Know your node runtime
Node vs chrome
node have many identifier e.g global, window, process
console.log(global.lucky_num)

Events
Asynchronous event driven js drivetime
Nodejs also refered to as "non-blocking"
You 'listen' to events e.g 
```
process.on('exit', function(){
  #do something
})