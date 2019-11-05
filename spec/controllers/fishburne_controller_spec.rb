require 'rails_helper'

RSpec.describe FishburneController, type: :controller do
 describe "fishburne#index action" do
 	it "should return a 404 error message if the page is not displayed"
 	expect(response).to have_https_status(:)
end
