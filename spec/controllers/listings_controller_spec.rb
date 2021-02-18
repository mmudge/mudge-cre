require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  before :each do
    @listing = create(:listing)
  end

  describe "GET Listings#index" do
    it "returns a successfull response" do
      puts Listing.all.count
      get :index
      assert_response :success

      puts @response.inspect
      puts @response.parsed_body
      puts @response.body
      puts @response.header

      expect(@response.status).to eq(200)

      # expect(JSON.parse(response.body).length).to eq(1)
      # expect(@listings.length).to eq(1)
      # expect(response).to render_template("application")
      # puts response.inspect
      # puts JSON.parse(@response.body)

      # expect(response.body.listings).to include(@listing)
    end
  end
end
