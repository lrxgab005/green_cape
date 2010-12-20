require 'integration_test_helper' 

class AdminTest < ActionController::IntegrationTest

  user = Factory(:user)
  
  test "admin login" do
    
    visit '/admin'
    assert page.has_content?('Email')
    fill_in 'user_email', :with => user.email
    
    assert page.has_content?('Password')
    fill_in 'user_password', :with => user.password
    assert page.has_content?('Remember me')
    check 'user_remember_me'
    click 'Sign in'
    
    
    save_and_open_page
  end

end