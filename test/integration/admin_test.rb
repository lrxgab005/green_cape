require 'integration_test_helper' 

class AdminTest < ActionController::IntegrationTest

  test "admin login" do
    user = Factory(:user, :name => "sdfgsd", :password => "", :password_confirmation => "")
    
    visit '/admin'
    assert page.has_content?('Email')
    fill_in 'user_email', :with => 'test@email.com'
    check 'user_remember_me'
    assert page.has_content?('Password')
    fill_in 'user_password', :with => 'password'
    click 'Sign in'
    assert page.has_content?('Remember me')
    assert page.has_content?('Sign up')
    assert page.has_content?('Forgot your password?')
    
    
    
    
    save_and_open_page
  end

end