require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  
  test "should require first name" do
    m = Member.new
    m.first_name = nil
    m.valid?
    refute_empty m.errors['first_name']
  end
  
  test "should require non alpha-numeric first name" do
    m = Member.new
    
    ok = %w{ fred Fred FRED } 
              
    bad = %w{ fred1 2fred fre2d }
  
    ok.each do |name| 
      m.first_name = name
      m.valid?
      assert_empty m.errors['first_name'], "#{name} shouldn't be invalid"
    end
   
    bad.each do |name| 
      m.first_name = name
      m.valid?
      refute_empty m.errors['first_name'], "#{name} shouldn't be valid"
    end
  end
  
end
