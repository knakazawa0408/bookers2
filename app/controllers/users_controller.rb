class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @books=@user.books
  end

  def index
    @users=User.all
    @book=Book.new
  end

  def edit
    @user=User.find(params[:id])
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end

end