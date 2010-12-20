Factory.define :user do |f|
  
  f.sequence(:email){ |n| "foo#{n}@gmail.com" }
  f.password 'foobar'
  f.password_confirmation { |u| u.password }
  
end