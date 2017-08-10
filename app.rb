require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      erb :'pirates/show'
    end

  end
end
