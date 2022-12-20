require_relative '../rails_helper'

RSpec.describe "Calcs", type: :request do
  describe "GET /input" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/calc/show"
      expect(response).to have_http_status(:success)
    end

    it "returns right value" do
      get "/calc/show", params: { :power => "3"}
      expect(assigns(:right_numbers)).to eq([[0, 153], [1, 370], [2, 371], [3, 407]])
    end

    it "returns different values" do
      get "/calc/show", params: { :power => "3"}
      first = :right_numbers
      get "/calc/show", params: { :power => "4"}
      second = :right_numbers
      expect(assigns(first)).not_to be eq(second)
    end
  end

end
