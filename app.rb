require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "heather"
    end
    
    get '/' do
                
        erb :index
    end

    post '/checkout' do
        @session = session
        session[:item] = params[:item]
    end
end