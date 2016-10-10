class CreditCardValidation
  attr_reader :credit_card
  def initialize(credit_card)
    @credit_card = credit_card
  end


  def validator
    result = /(([0-9]{11,12})([0-9]{4}))/.match(@credit_card)
    print "esto es lo que sale al evaluar #{result} --"
    if result != nil
      result[3]
    else
      nil
    end
  end

end