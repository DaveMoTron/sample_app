#By using the symbol ":User", we get Factory Girl to simulate the User model

Factory.define :user do |user|
  user.name                   "David Cruikshank"
  user.email                  "david@test.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end