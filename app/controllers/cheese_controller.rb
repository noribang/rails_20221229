class CheeseController < ApplicationController
    # Mapped to get /cheese.
    # Default looks for folder of same controller name 
    # with view file index.html.erb in app/views.
    
    # To return JSON use render method.
    def index
        # byebug
        
        # render json: { hello: "Cheeseburger!!!", today: "Thursday"}

        cheeses = Cheese.all
        render json: cheeses
    end
    # Return JSON by :id param.
    def show
        # byebug
        cheese = Cheese.find(params[:id])
        render json: cheese
    end

end