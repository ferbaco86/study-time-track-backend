RSpec.describe 'Subjects', type: :request do
  # initialize test data
  let!(:session1) { create(:session) }
  let!(:session2) { create(:session, user_id: session1.user_id) }
  let!(:subject1) { create(:subject, session_id: session1.id, time: 10) }
  let!(:subject2) { create(:subject, session_id: session2.id, time: 2) }
  let!(:subject3) { create(:subject, session_id: session2.id, time: 1) }
  let!(:subject4) { create(:subject, session_id: session2.id, time: 5) }
  let!(:subject5) { create(:subject, session_id: session2.id, time: 6) }
  let!(:subject6) { create(:subject, session_id: session1.id, time: 8) }
  let!(:user_id) {session1.user_id}
  
    describe 'GET /top/:id' do
  # make HTTP get request before each example
      before { get "/top/#{user_id}", headers: encode_token({ user_id: user_id }) }
      it 'returns top 5 subjects with most time' do
        expect(json).not_to be_empty
        expect(json.size).to eq(5)
      end
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  describe 'POST create valid subject' do
    before { post '/subjects', params: { id: session1.id, subject: { name: 'Go', time: 3 } }, headers: encode_token({ user_id: user_id }) }
    it 'returns created session' do
      pp json
        expect(json).not_to be_empty
        expect(json['name']).to eq('Go')
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end