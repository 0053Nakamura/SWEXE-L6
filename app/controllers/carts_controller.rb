class CartsController < ApplicationController
    def show
        @carts = Cartitem.all
    end
end
