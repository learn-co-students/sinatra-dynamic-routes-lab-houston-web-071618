require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
 get '/reversename/:name' do
   @name = params[:name]
   @name.reverse
 end#reversename

 get '/square/:number' do
   @num = params[:number].to_i
   @numsquared = @num*@num
   "#{@numsquared}"
 end#squarenumber

 get '/say/:number/:phrase' do
   @counter = params[:number].to_i
   @phrase = params[:phrase]
   @long_phrase = ""

   @counter.times do
      @long_phrase += @phrase
   end

   @long_phrase
   # while @counter >= 0 do
   #   "#{@phrase}\n"
   #   @counter -= 1
   # end#while loop

 end#saynumberphrase

 get '/say/:word1/:word2/:word3/:word4/:word5' do
 @words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end#sayashittonofwords

 get '/:operation/:number1/:number2' do
   @operation = "#{params[:operation]}"
   @num1 = params[:number1].to_i
   @num2 = params[:number2].to_i

    case @operation

      when "add"
        "#{@num1+@num2}"
      when "subtract"
        "#{@num1-@num2}"
      when "multiply"
        "#{@num1*@num2}"
      when "divide"
        "#{@num1/@num2}"
      else
        "you have err'ed my son."
    end#case


 end#operateonnumbers
end
