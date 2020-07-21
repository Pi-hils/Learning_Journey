# The Web

The World Wide Web is made up of 2 main components which are:
1. Resources (mainly stored on **server**, e.g google homepage)

_Server component provides service to one or more clients, whom have initiated a request for such service. Servers are classified by the services they provode, e.g a **web server** serves **web pages** and a **file server**  serves **computer files**._

2. Entities that ask those resources (usually the **clients**, e.g _Chrome, Safari_).

The web is built on **web-client** relationship. The client is dependent on the server for giving and mannaging info. Anything that can request a resource from a server can be identified as a **client**.

## Learning Objective:
    - Understand the client-server relationship.

To commence with http on your command line, 
    - Run <brew install httpie>
    - Once completed, add http at the beginning of your link on the command line, eg $ http http://makersipsum.herokuapp.com/

[![Image from Gyazo](https://i.gyazo.com/b249a461eec97f5d038c0a29ed335ba3.png)](https://gyazo.com/b249a461eec97f5d038c0a29ed335ba3)

# The Hypertext Transfer Protocol(HTTP)

Clients and Servers talk to one another using the **Hypertext Transfer Protocol**. The client makes a **request** to a sever and receives back a **response**. This is known as a **"protocol"**  as it has a defined structure for requests & responses.

## Learning Objective:
    - Recognise a request & a response & important elements of each.

   [![Image from Gyazo](https://i.gyazo.com/a46aa94e69ddb461f5594b51e052a328.png)](https://gyazo.com/a46aa94e69ddb461f5594b51e052a328)

   Using the **-v**

   [![Image from Gyazo](https://i.gyazo.com/60d340cf2e7c59d58887ae3fbe6661a9.png)](https://gyazo.com/60d340cf2e7c59d58887ae3fbe6661a9)

## GET
   The above picture explained: When you type in your link/webpage URL in the browser and hit ENTER, ther browser makes an **HTTP GET request** _(as shown above)._ 

   1. The HTTP "verb" is GET which is used to retrieve document, images, or other internet resources
   2. The HTTP version is given, which in this case is 1.1.
   3. The next lines are HTTP heads, which does things likes - inform the webserver what website to retrieve, based on the domain(Host); report the user-agent and acceptable encoding & language; and other browser-specific options.
   4. _Disclaimer_: if you ever get more information e.g /home? after your GET _(on the first line)_, anything after the '?' is known as a parameter and this comes in a key-value combo. **Ensure** that no sensitive information, e.g password is present on this line.

   **when visiting a site where sensitive information is required, ensure the protocol is declared as https. This makes the web browser encrypts any information you give

## Post
Another HTTP request is the POST, like the GET request but the parameters are sent in the body of the request rather than the first line. This is good and secure as these values are not logged by default on webservers, proxies, or other software as request is transmitted over the internet.

[![Image from Gyazo](https://i.gyazo.com/df38b60f5d6604e52390df5e3d93f784.png)](https://gyazo.com/df38b60f5d6604e52390df5e3d93f784)


There are several request types, including **OPTIONS, HEAD, PUT, DELETE** etc, however GET and POST are the most common.

## HTTP Responses
HTTP responses are like HTTP requests in thaat they are text based and contain HTTP headers. In the image above, the HTTP response returned the status code, in this case 200 OK, meaning everything is fine. 

After status code, some server headers are sent. These includes information about the type of server and software it's running. Next is the body of the response, which contains the data we requested for- HTML, CSS, JS or binary data like an image/PDF.

# Query String
A **query string** is a part of a _Uniform Resource Locator_ (URL) that assigns values to specific parameters.
Example:
<http://www.example.com/home?name=Bob&age=21>

_Remember:anything after the '?' is the parameter_, so here: name and age are our keys.

## Sinatra: POST ed params

[![Image from Gyazo](https://i.gyazo.com/5c756d6dafb7591a4c20c5829fe47df0.png)](https://gyazo.com/5c756d6dafb7591a4c20c5829fe47df0)

The method is likened to a verb that "expresses thhe intention of the request". **GET** methods is a verb that **ask for a server resource**. **POST** method imply that the request is **asking to modify a server resource**.


### Useful links
- [Anatomy of URL](https://doepud.co.uk/blog/anatomy-of-a-url)
- [HTTP- Basics](http://learn.onemonth.com/understanding-http-basics/)
- [Makers Academy](https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_posted_params.md)
