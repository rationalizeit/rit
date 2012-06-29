require 'machinist/active_record'
require 'faker'

User.blueprint do
  email { "user-#{sn}@test.com" }
  name  { Faker::Name.name }
end

Course.blueprint do
  name { "Course #{sn}" }
  price { 549 }
end

Lesson.blueprint do
  name { "Lesson #{sn}"}
end

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
