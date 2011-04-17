require 'rubygems'
require 'sinatra'
`rm -f /tmp/quake-meme.jpg`

get "/" do
  if File.exist?('/tmp/quake-meme.jpg')
    fork { sleep(10) && `cd .. && 4-facetime/run` }
    s = <<HTMLLOL
<html> 
  <head> 
    <title>quake</title> 
  </head> 
  <body style="background-color: #2c4762">
    <img src="/quake.jpg" width="700px">
  </body> 
</html> 
HTMLLOL

  else

<<HTMLLOL
<html> 
  <head> 
    <title>quake</title> 
    <meta http-equiv="refresh" content="5"> 
    <style> 
      html {
        background-color: #333;
      }  
    </style> 
  </head> 
  <body> 
  </body> 
</html> 
HTMLLOL

  end
end

get "/quake" do
  `meme Y_U_NO 'EARTH' 'Y U NO STAY STILL' > /tmp/quake-meme.jpg`
end

get "/quake.jpg" do
  send_file '/tmp/quake-meme.jpg', :type => 'image/jpeg', :disposition => 'inline'
end
