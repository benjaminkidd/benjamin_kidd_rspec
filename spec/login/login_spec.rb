describe 'Shipt Login Page', :order :defined do
  p = load_page_objects 'login'

  describe 'Login Page' do
    it "views log in page successfully", :smoke do
      visit 'https://shop.shipt.com/login'
      sleep 100
    end
  end
end