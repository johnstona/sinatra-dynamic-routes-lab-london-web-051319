require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @reversed_name = params[:name].reverse!
      "#{@reversed_name}"
    end

    get '/square/:number' do
      @squared_number = params[:number].to_i * params[:number].to_i
      "#{@squared_number.to_s}"
    end

    get '/say/:number/:phrase' do
      @number = params[:number].to_i
      "#{params[:phrase] * @number}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      if operation == "add"
        "#{(number1 + number2).to_s}"
      elsif operation == "subtract"
        "#{(number1 - number2).to_s}"
      elsif operation == "multiply"
        "#{(number1 * number2).to_s}"
      elsif operation == "divide"
        "#{(number1 / number2).to_s}"
      end
    end

end