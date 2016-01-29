require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 

puts "Welcome to the Magic 8 Ball. Please type in your question."
user_answer = gets.chomp

answers = ['Yes, definitely', 'My reply is no', 'Reply hazy try again', 'It is decidedly so', 'Without a Doubt', 'It is certain', 'Better not tell you now',  'You may rely on it', 'As I see it, yes', 'Most likely', 'Concentrate and ask again', 'My sources say no']

reply = answers.sample

# put your own credentials here 
account_sid = 'AC01dc31b82ac17567036dbd20477bda51' 
auth_token = 'eb3c6a9321ab752bbb69ed2ed27912a9' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new(account_sid, auth_token) 
 
@client.account.messages.create({
  :from => '+19702968204', 
  :to => '+17208376877', 
  :body =>  reply,
    })
