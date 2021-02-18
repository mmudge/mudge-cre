require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  describe "GET Listings#index" do
    it "returns a successfull response" do
      get :index
      assert_response :success
    end
  end
end
