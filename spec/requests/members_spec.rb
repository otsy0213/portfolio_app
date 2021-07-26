require 'rails_helper'

RSpec.describe "Members", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/members/show"
      expect(response).to have_http_status(:success)
    end
  end

end
