# cookie jar overflow

this is a simple proof of concept for cookie jar overflow attack works on both google chrome (chromium) and firefox . though i've just tested it on these two but it should definitely work on other browsers like opera too .

as you may know google chrome uses 180 limit and firefox uses 150 limit for cookie jar per domain . then im overflowing them with 200 cookies makes both of them vulnirable to the attack .

simply open run the PoC open the localhost:8080, hit the button and refresh the page . now you should see that the provided link has changed from google.com to attacker.com . that's all .

notice that you need ruby sinatra installed to run the PoC .
