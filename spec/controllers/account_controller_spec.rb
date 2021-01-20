RSpec.describe Api::V1::AccountController, type: :controller do
  login_user
  let(:session) { {} }

  describe "get tweets without count param for user 1" do
    it "returns a json with 20 tweets " do
      get :tweets, params: { id: 1 }, session: session
      expect(JSON.parse(response.body).length).to be(20)
    end
  end

  describe "get 5 tweets for user 1" do
    it "returns a json with 5 tweets " do
      get :tweets, params: { id: 1, count: 5 }, session: session
      expect(JSON.parse(response.body).length).to be(5)
    end
  end

  describe "get twitter users" do
    it "returns a list equal in length to the number of twitter users" do
      get :twitter, params: {}, session: session
      twitter_users_count = User.where.not(twitter_handle: nil).count
      expect(JSON.parse(response.body).length).to be(twitter_users_count)
    end
  end
end
