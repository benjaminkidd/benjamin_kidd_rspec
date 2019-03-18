describe 'Shipt Login Page' do
  error_message = '//*[@id="root"]/div/div[2]/div[3]/div[3]/form[3]/fieldset/div[3]'
  describe 'Login Page' do
    it "views log in page successfully", :smoke do
      visit 'https://shop.shipt.com/login'
      fill_in 'username', with: 'test_username@shipt'
      fill_in 'password', with: 'incorrect_password'
      click_button 'Log In'
      expect(page).to have_xpath(error_message, :text => 'Invalid Username or Password')
      click_button 'Log In'
      expect(page).to have_xpath(error_message, :text => 'Invalid Username or Password')
      click_button 'Log In'
      expect(page).to have_xpath(error_message, :text => 'Invalid Username or Password')
      click_button 'Log In'
      expect(page).to have_xpath(error_message, :text => 'Invalid Username or Password')
    end
  end
end