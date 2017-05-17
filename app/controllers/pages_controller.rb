class PagesController < ApplicationController
  def home
  end

  def sms
    require 'figaro'
    require 'twilio-ruby'

# To find these visit https://www.twilio.com/user/account
account_sid = "AC0d52b0bf62a8ceecf0a1b475f18f36c1"
auth_token = "6ea57f2d6f12d6addc2836ed38119946"

@client = Twilio::REST::Client.new account_sid, auth_token

@message = @client.messages.create(
  to: params[:phone],
  from: "+19259058206" ,
  body: params[:body],
)
  end
end
