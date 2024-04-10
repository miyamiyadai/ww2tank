class Admin::TankController < ApplicationController

def new
    @post = Post.new
end 

def show
    @post = Post.find(params[:id])
end 

def index
end 

def destroy
end

def edit
end     

def create
    @post = Post.new(book_params)
    if @post.save
      flash[:notice] = "create successfully"
      redirect_to post_path(@post.id)
    else
      render :index
    end   
end 

 private

    def post_params
      params.require(:post).permit(:title, :content)
    end

end
