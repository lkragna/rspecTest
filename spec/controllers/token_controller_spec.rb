require 'rails_helper'
require 'spec_helper'
#require_relative '../app/models/tokenizer'

RSpec.describe TokenController, type: :controller do

  describe "GET #generate" do
    it "valid card number" do
      get :generate
      tokenizer = Tokenizer.new("123456789012345","","","","")
      expect(tokenizer.generateToken).not_to eql(nil)
      #expect(response).to have_http_status(:success)
    end

    it "invalid card number" do
      get :generate
      tokenizer = Tokenizer.new("cebollita0r2345","","","","")
      expect(tokenizer.generateToken).to eql(nil)
      #expect(response).to have_http_status(:success)
    end
  end

end
