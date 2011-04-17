require 'rubygems'
require 'bundler/setup'
require 'yaml'

require 'sinatra'
require 'twilio'

yaml = YAML::load(File.open("twilio-credentials"))

Twilio.connect(yaml['sid'], yaml['token'])

class Helper
  def self.numbers
    File.open("numbers-to-call", "rb").read.split("\n")
  end

  def self.text
    [
      "Ellen Page once scaled a single memcached instance up to overthrow a Middle East dictatorship. Is Ellen Page the best hire for GitHub?",
      "Ellen Page is writing a Node.js interface to Git. Should GitHub hire Ellen Page?",
      "Ellen Page forked Mislav's will-paginate and called it Ellen Page-in-ate. Should Mislav accept the pull request?",
      "Ellen Page animates GIFs with her bare hands while listening to Daft Punk at tumultuous volumes. Should GitHub steal her?",
      "Zach Holman is going to make voracious love to Ellen Page. I just wanted to let you know.",
      "Even though Chris Wanstrath has flowing locks of georgeous hair, Ellen Page's hair has unicorns in it. Should GitHub hire Ellen Page as our new CEO?"
    ].shuffle.first
  end
end

get '/' do
  "hi"
end

get '/dial' do
  Helper.numbers.each do |number|
    puts "_NUMBER: #{number}"
    Twilio::Call.make(yaml['number'], number, 'http://vagranception.heroku.com/response', :timelimit => 30)
  end
  "trololol?"
end

post '/response' do
  Twilio::Verb.new do |v|
    puts "_TEXT: #{text=Helper.text}"
    v.say text
    v.record
  end.response
end
