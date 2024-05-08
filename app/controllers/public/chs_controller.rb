class Public::ChsController < ApplicationController
    
def new
    @ch = Ch.new
end 

def show
    @ch = Ch.find(params[:id])
    @user = @ch.user
end    

def index
    @user = current_user
    @chs = Ch.all
    @ch = Ch.new
    @users = @ch.user
end 

def update
    @ch = Ch.find(params[:id])
    @ch.user_id = current_user.id
    if @ch.update(ch_params)
       flash[:notice] = "update successfully"
       redirect_to ch_path(@ch.id)  
    else
      render :edit
    end   
end

def destroy
    ch = Ch.find(params[:id])
    ch.destroy 
    flash[:notice] = "delete successfully"
    redirect_to '/public/chs'
end     
    
end
