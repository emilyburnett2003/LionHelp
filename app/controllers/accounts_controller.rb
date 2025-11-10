class AccountsController < ApplicationController
  def index
  end

  def login
    email = account_params[:email]
    password = account_params[:password]

    user = UserAccount.find_by(email: email)
    if user.nil?
      flash[:notice] = "No account found with that email."
      redirect_to accounts_path
    elsif user.password != password
      flash[:notice] = "Incorrect password."
      redirect_to accounts_path
    else
      session[:user_name] = user.name
      redirect_to services_path
    end
  end

  def logout
    session.delete(:user_name)
    redirect_to accounts_path
  end

  def create
    # check if email already exists
    existing_user = UserAccount.find_by(email: account_params[:email])
    if !existing_user.nil?
      flash[:notice] = "An account with this email already exists."
      redirect_to new_account_path
    else
      user = UserAccount.new(account_params)
      if user.save
        session[:user_name] = user.name
        redirect_to services_path
      else
        flash[:notice] = "Error creating account. Please try again."
        redirect_to new_account_path
      end
    end
  end

  def account_params
    params.require(:user_account).permit(:name, :email, :password)
  end
end