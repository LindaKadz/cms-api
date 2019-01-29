require 'rails_helper'

RSpec.describe Api::V0::ContentsController, type: :request do
  describe 'GET /v0/contents' do
    it 'should return Present!' do
      get '/api/v0/contents'

      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(json_response['message']).to eq 'Present!'
    end
  end
end
