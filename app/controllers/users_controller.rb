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
  end

end