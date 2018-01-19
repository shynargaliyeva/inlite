class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to movies_path
    
    else
      render :new
    end
  end

  def edit
  end

  def addissue
    current_user.issues.push(Issue.find(params[:id]))
    redirect_to profile_edit_path
  end
  
  def removeissue
    current_user.issues.delete(params[:id])
    redirect_to profile_edit_path
  end

  def movies
    @movies = current_user.movies
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end 

end
