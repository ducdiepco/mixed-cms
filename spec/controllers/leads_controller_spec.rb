require "rails_helper"

describe LeadsController, type: :request do
  describe 'POST /leads/sign_up' do
    before do
      headers = { 'Content-Type' => 'application/json' }

      post '/leads/sign-up', headers: headers, params: params.to_json
    end

    subject { response }

    context 'with valid params' do
      let(:params) { { email: 'test@test.com', first_name: 'first_name', last_name: 'last_name', phone: '89033556128'} }

      its(:status) { is_expected.to eq 200 }
      its(:body) { is_expected.to match /lead/ }

      describe 'lead' do
        subject { Lead.last }

        its(:email) { is_expected.to eq 'test@test.com' }
        its(:first_name) { is_expected.to eq 'first_name'}
      end
    end

     context 'with invalid params' do
      let(:params) { { email: 'email', first_name: 'login', last_name: 'password', phone: '89033556128' } }

      its(:status) { is_expected.to eq 422 }
      its(:body) { is_expected.to eq '{"errors":{"email":["Invalid email format"]}}' }

      it 'should not create user' do
        expect(Lead.count).to eq 0
      end
    end

  end
end
