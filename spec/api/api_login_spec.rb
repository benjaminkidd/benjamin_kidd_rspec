describe 'Shipt Login with API calls' do
  url =  'https://api.shipt.com/auth/v2/oauth/token?white_label_key=shipt'
  headers = {:x_user_type => 'Customer', :accept => 'application/x-www-form-urlencoded', :content_type => 'application/x-www-form-urlencoded'}
  body = {:username => 'benkidd@live.com', :password => 'Spt112@32'}
  request = RestClient::Request.new(method: :post, url: url, payload: body, headers: headers).execute
  expect(request.body).to have "Invalid Username or Password"
end