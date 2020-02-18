require 'rails_helper'

RSpec.describe "Habits", type: :request do
  describe "GET /habits" do
    it "works! (now write some real specs)" do
      get habits_path
      expect(response).to have_http_status(200)
    end
  end
end
