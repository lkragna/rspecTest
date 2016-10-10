class Tokenizer
  include ActiveModel::Model
  include ActiveModel::Validations
  attr_accessor :card_credit_number, :name, :bin, :card_exp, :is_credit
  validates_numericality_of :card_credit_number

  def initialize(card_credit_number, name, bin, card_exp, is_credit)
    @card_credit_number = card_credit_number
  end

  def generateToken
    creditCardValidation = CreditCardValidation.new(@card_credit_number)
    creditCardValidation.validator
  end



end
