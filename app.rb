require 'sinatra'
require 'twilio-ruby'

require 'sinatra/reloader' if development?
require 'pry' if development?
require 'pry-byebug' if development?

get '/' do
  response = Twilio::TwiML::VoiceResponse.new do |r|
    r.say 'This is a test!'
  end

  logger.info response.to_s

  response.to_xml
end
