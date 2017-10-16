require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_success # response.success?
    end
  end

  context 'GET #show' do
    it 'returns a success response' do
      user = User.create!(first_name: 'First', last_name: 'Last', email: 'first.last@example.com')
      get :show, params: { id: user.to_param }
      expect(response).to be_success
    end
  end
end
