require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  
  test "should require non-empty member details" do
    m = Member.new
    assert m.invalid? 
    assert m.errors[:first_name].any?
    assert m.errors[:last_name].any? 
    assert m.errors[:position].any? 
    assert m.errors[:description].any?
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
  
  test "should require non alpha-numeric last name" do
    m = Member.new
    
    ok = %w{ moss Moss MOSS } 
              
    bad = %w{ moss1 2Moss M2OSS }
  
    ok.each do |name| 
      m.last_name = name
      m.valid?
      assert_empty m.errors['last_name'], "#{name} shouldn't be invalid"
    end
   
    bad.each do |name| 
      m.last_name = name
      m.valid?
      refute_empty m.errors['last_name'], "#{name} shouldn't be valid"
    end
  end
  
  
  
end
