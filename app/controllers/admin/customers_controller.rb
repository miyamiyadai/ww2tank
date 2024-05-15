class Admin::CustomersController < ApplicationController
def show
    @Customer = Customer.find(params[:id])
    @chs = @customer.chs
end 

def index
    @customer = current_customer
    @customers = Customer.all
end 

def destroy
end     

def update
    @customer = Customer.find(params[:id])
    customer = current_Customer.id
     if @customer.update(customer_params)
       flash[:notice] = "update successfully"
       redirect_to public_customer_path(@customer.id)  
     else
      render :edit
     end   
end

private

def customer_params
    params.require(:customer).permit(:name)
end
  
def is_matching_login_user
    customer = Customer.find(params[:id])
    unless customer.id == current_customer.id
      redirect_to public_customer_path(current_customer.id)
    end
end

end
