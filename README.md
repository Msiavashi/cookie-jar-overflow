# cookie jar overflow

this is a simple proof of concept for cookie jar overflow attack works on both google chrome (chromium) and firefox . though it i've just tested it on these two but it should definitly work on other browsers like opera too .

as you may know google chrome uses 180 limit and firefox uses 150 limit for cookie jar per domain . then im overflowing them with 200 cookies makes of them vulnirabable to the attack .

notice that you need ruby sinatra installed to run the PoC .
