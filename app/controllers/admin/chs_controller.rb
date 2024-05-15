class Admin::ChsController < ApplicationController
    
def show
    @ch = Ch.find(params[:id])
    @customer = @ch.customer
end 

def index
    @customer = current_customer
    @chs = Ch.all
    @ch = Ch.new
    @customers = @ch.user
end 

def destroy
    ch = Ch.find(params[:id])
    ch.destroy 
    flash[:notice] = "delete successfully"
    redirect_to '/public/chs' 
end     

private

def ch_params
    params.require(:ch).permit(:post)  
end
  
def is_matching_login_user
    ch = Ch.find(params[:id])
    unless ch.customer.id == current_customer.id
      redirect_to public_chs_path
    end
end

end
