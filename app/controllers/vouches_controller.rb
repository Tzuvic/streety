class VouchesController < ApplicationController

  def create
    @voucher = current_user
    break
    @vouchee = params[:id]
    @vouch = Vouch.new(params[content])
  end
end
