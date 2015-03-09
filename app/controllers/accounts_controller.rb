class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    account = Account.create(account_params)
    redirect_to 'account/show'
  end

  def show
    @account = Account.find(params[:id])
  end

  def edit
    @account = Account.find(params[:id])
  end

  def destroy
    Account.destroy(params[:id])
    redirect_to '/signup'
  end

  def account_params
    params.require(:account).permit( :f_name, :l_name, :born_on, :phone)
  end

end
