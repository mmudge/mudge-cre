require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  before :each do
    @listing = create(:listing)
  end

  describe "GET Listings#index" do
    it "returns a successfull response" do
      get :index
      assert_response :success

      expect(@response.status).to eq(200)
  end
end
