require 'rails_helper'

describe TweetsController do
  let(:category) { create(:category) }
  let(:user) { create(:user) }

  describe '#index' do
    context "#index" do
      get :index, params: { category_id: category.id }

      it 'assigns @tweet' do
        expect(assigns(:tweet)).to be_a_new(Tweet)
      end

      it 'assigns @category' do
        expect(assigns(:categpry)).to eq category
      end

      it 'redners index' do
        expect(response).to render_template :index
      end
    end
  end
  # describe 'GET #new' do
  #   it "renders the :new template" do
  #     get :new
  #     expect(response).to render_template :new
  #   end
  # end

  # describe 'GET #index' do
  #   it "populates an array of tweets ordered by created_at DESC" do
  #     tweets = create_list(:tweet, 3)
  #     get :index
  #     expect(assigns(:tweets)).to match(tweets.sort{ |a, b| b.created_at <=> a.created_at } )
  #   end

  #   it "renders the :index template" do
  #     get :index
  #     expect(response).to render_template :index
  #   end
  # end

  # describe 'POST #create' do
  #   before do
  #     @user = create(:user)
  #   end

  #   it "save a new tweet" do
  #     tweet_params = attributes_for(:tweet)
  #     sign_in @user
  #     expect{
  #       post :create, params: { tweet: tweet_params }
  #     }.to change(@user.tweets, :count).by(1)
  #   end

  #   it "redirects to tweets#index" do
  #     tweet_params = attributes_for(:tweet)
  #     sign_in @user
  #     post :create, params: { tweet: tweet_params }
  #     expect(response).to redirect_to tweets_path
  #   end
  # end

  # describe 'GET #edit' do
  #   it "assigns the requested tweet to @tweet" do
  #     tweet = create(:tweet)
  #     get :edit, params: { id: tweet }
  #     expect(assigns(:tweet)).to eq tweet
  #   end

  #   it "renders the :edit template" do
  #     expect(response).to render_template :edit
  #   end
  # end
end
