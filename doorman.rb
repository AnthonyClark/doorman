class Doorman < Sinatra::Base
  get '/' do
    response = Twilio::TwiML::VoiceResponse.new do |r|
      r.say 'This is a test!'
    end
  
    logger.info response.to_s
  
    response.to_xml
  end
end
