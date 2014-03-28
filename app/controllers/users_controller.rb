class UsersController < ApplicationController
  def new
  end
  
  def show
     @user = User.find(params[:id])
  end
  
  def index
     @user = User.find(6)
  end
end
