Factory.define :user do |user|
        user.name                      "focon"
        user.email                     "f@o.nl"
        user.password                  "foobar"
        user.password_confirmation     "foobar"
end

Factory.sequence :email do |n|
"person-#{n}@example.com"
end
