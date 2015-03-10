class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    if sessions[:access_token]
      @account.full_name   =  response.user.full_name
      @account.born_on     =  nil
      @account.phone       =  nil
    else sessions[:user_id]
      @profile = Profile.create(profile_params)
    end
    user = User.find :id account[:user_id]
    user.accounts_id = account.id
    profile.save
    redirect_to 'account/show'
  end

  def show
    @account = Account.find(params[:id])
  end

  def edit
    @account = Account.find(params[:id])
  end

  def destroy
    User.destroy(params[:id])
    redirect_to '/signup'
  end

  def account_params
    params.require(:account).permit( :fullname, :born_on, :phone)
  end

end
