RSpec.describe Api::V0::ContentsController, type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { { HTTP_ACCEPT: 'application/json' }.merge!(credentials) }

  describe 'GET /v0/contents' do
    before do
      5.times { user.content.create({ author: 'Linda', status: 'published', title: 'Code test',
        published_date: '30/01/2019', content: 'Code test, build rails API and use any front end framework' })}
    end

    it 'should return many posts!' do
      get '/api/v0/contents', headers: headers

      json_response = JSON.parse(response.body)
      debugger
      expect(response.status).to eq 200
    end
  end

  describe 'POST /api/v0/contents' do
    it 'creates a post' do
      post '/api/v0/contents', params: { author: 'Linda', status: 'Published', summary: 'my first post',
        published_date: '30/01/2019', content: 'Blog api for Oozou code test' }, headers: headers
      post = Content.last
      expect(response).to have_http_status(200)
    end
  end
end
