class AccountsController < ApplicationController
  def index
  end

  def create
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
      redirect_to services_path(user_name: user.name)
    end
  end

  def account_params
    params.require(:user_account).permit(:name, :email, :password)
  end
end