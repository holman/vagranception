number = File.read(File.expand_path("config/facetime-number"))
`open facetime://#{number}`

require 'rubygems'
require 'appscript'

Appscript::app('FaceTime').activate
sleep(1)
Appscript::app('System Events').keystroke("\r")
