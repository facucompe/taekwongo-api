require 'rails_helper'

describe SessionsController, type: :controller do
  describe 'POST #create' do
    let!(:valid_user) { create(:user) }

    context 'when create a valid session' do
      before do
        post :create, params: { session: { email: valid_user.email,
                                           password: valid_user.password } }
      end

      it 'responds with 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'responds with a token' do
        expect(response_body).to include('access_token')
      end

      it 'responds with a renew_id' do
        expect(response_body).to include('renew_id')
      end
    end

    context 'when use wrong password' do
      before do
        post :create, params: { session: { client_number: valid_user.email,
                                           password: 'wrong-password' } }
      end

      it 'responds with 200' do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end

  describe 'POST #invalidate_all' do
    include_context 'Authenticated User'

    before do
      post :invalidate_all
    end

    it 'responds with 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'changes user verification code' do
      expect(User.last.verification_code).not_to eq user.verification_code
    end
  end
end
