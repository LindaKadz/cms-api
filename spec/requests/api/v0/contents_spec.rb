require 'rails_helper'

RSpec.describe Api::V0::ContentsController, type: :request do
  describe 'GET /v0/content' do
    it 'should return Created!' do
      get '/api/v0/content'

      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(json_response['message']).to eq 'Created!'
    end
  end
end
