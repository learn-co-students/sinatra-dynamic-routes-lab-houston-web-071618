require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
  	@name = params[:name]
  	"#{@name.reverse}"
  end


  get '/square/:number' do
  	(params[:number].to_i*params[:number].to_i).to_s
  	#{}"#{@number*@number}.to_s"
  end

  get '/say/:number/:phrase' do
  	@n = params[:number].to_i
  	@phrase = params[:phrase]

  	ans = ''
  	@n.times do
  		ans += "#{@phrase}"
  	end

  	ans
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  	@operation = params[:operation]

  	ans = "Unable to perform this operation"

  	case @operation
  	when 'add'
  		ans = (params[:number1].to_i + params[:number2].to_i).to_s
  	when 'subtract'
  		ans = (params[:number1].to_i - params[:number2].to_i).to_s
  	when 'multiply'
  		ans = (params[:number1].to_i * params[:number2].to_i).to_s
  	when 'divide'
  		ans = (params[:number1].to_i / params[:number2].to_i).to_s
  	end

  end


end