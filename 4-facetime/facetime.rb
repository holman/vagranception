number = File.read(File.expand_path("config/facetime-number"))
`open facetime://#{number}`

require 'rubygems'
require 'appscript'

Appscript::app('FaceTime').activate
sleep(3)
Appscript::app('System Events').keystroke("\r")
