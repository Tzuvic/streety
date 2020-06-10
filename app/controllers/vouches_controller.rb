class VouchesController < ApplicationController

  before_action :find_user

  def new
    @vouch = Vouch.new
  end

  def create
    @voucher = current_user
    @vouchee = User.find(params[:user_id])
    @vouch = Vouch.new(vouch_params)
    @vouch.vouchee = @vouchee
    @vouch.voucher = @voucher
    if @vouch.save
      redirect_to user_path(@user)
    else
      flash[:alert] = "Something went terribly wrong."
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])

  end


  def vouch_params
    params.require(:vouch).permit(:content)
  end
end
