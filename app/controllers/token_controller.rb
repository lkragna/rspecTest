class TokenController < ApplicationController
  def generate
  end

  private

  def token_params
    params.require(:token).permit(:card_credit_number, :name, :bin, :card_exp, :is_credit)
  end

end
