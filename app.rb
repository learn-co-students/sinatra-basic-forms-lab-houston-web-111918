require_relative 'config/environment'

class App < Sinatra::Base   


    get '/' do
        
        erb :index
    end

    get '/new' do 

        erb :create_puppy 
    end

    get '/puppy' do 

        erb :display_puppy
        


    post '/puppy' do 
        @puppy = params[:puppy]
        @name = @puppy[:name]
        @breed = @puppy[:breed]
        @age = @puppy[:age]
        Puppy.new(@name, @breed, @age)
        #@puppy = Puppy.new(params[:id]) 
         binding.pry 
        #puppy = params
        #puppy = Puppy.create(params[:id])


        erb :display_puppy 
    end




    

end
