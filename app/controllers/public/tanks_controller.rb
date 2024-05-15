class Public::TankController < ApplicationController

def show
     @tank = Tank.find(params[:id])
end 

def index
    @tanks = Tank.all
    @tank = Tank.new
end 

end
