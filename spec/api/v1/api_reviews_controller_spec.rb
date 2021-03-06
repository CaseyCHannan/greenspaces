require "rails_helper"

RSpec.describe Api::V1::ReviewsController, type: :controller do
  describe "POST#create" do
    let!(:user) { FactoryBot.create(:user) }
    let!(:space) { FactoryBot.create(:green_space) }

    it "should create a new review" do
      params = {title: "New review",
                    rating: 2,
                    body: 'This is a super long body for the review',
                    user_id: user.id}
      post :create, params: {green_space_id: space.id}, body:(params).to_json
      expect(Review.last.title).to eq "New review"
    end
  end
  describe "DELETE#destroy" do
    it "should delete a review" do
      green_space = FactoryBot.create(:green_space, name: "Your Backyard")
      review = FactoryBot.create(:review, green_space: green_space)
      params ={id: review.id}
      delete :destroy, params: params
      expect(Review.all.length).to eq 0
    end
  end
  describe "GET#show" do
    it "should return a thumbs vote and vote count" do
      user = FactoryBot.create(:user)
      review = FactoryBot.create(:review, user: user, green_space: FactoryBot.create(:green_space, name: "ABLADEMY"))
      FactoryBot.create(:vote, user: user, review: review)
      params = {id: review.id, user_id: user.id}
      get :show, params: params
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json["vote"]).to eq 1
      expect(returned_json["vote_count"]).to eq 1
    end
  end
end
