class Admin::TankController < ApplicationController

def new
    @tank = Tank.new
end 

def show
    @tank = Tank.find(params[:id])
end 

def index
    @tanks = Tank.all
    @tank = Tank.new
end 

def destroy
    tank = Tank.find(params[:id])
    tank.destroy 
    flash[:notice] = "delete successfully"
    redirect_to '/admin/tanks' 
end

def edit
    @tank =Tank.find(params[:id])
end     

def create
    @tank = Tank.new(tank_params)
    if @tank.save
      flash[:notice] = "create successfully"
      redirect_to tank_path(@tank.id)
    else
      render :index
    end   
end 

 private

    def tank_params
      params.require(:post).permit(:title, :content)
    end

end
