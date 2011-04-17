require 'rubygems'
require 'bundler/setup'

require 'sinatra'
require 'twiliolib'

API_VERSION = '2010-04-01'

yaml = YAML::load(File.open("../config/twilio-credentials"))

account = Twilio::RestAccount.new(yaml['sid'], yaml['token'])

get '/' do
  "hi"
end

get '/dial' do
end
