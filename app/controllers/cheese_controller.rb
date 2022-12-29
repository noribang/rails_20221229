class CheeseController < ApplicationController
    # Mapped to get /cheese.
    # Default looks for folder of same controller name 
    # with view file index.html.erb in app/views.
    
    # To return JSON use render method.
    def index
        # render json: { hello: "Cheeseburger!!!", today: "Thursday"}
        cheeses = Cheese.all
        render json: cheeses
    end

end