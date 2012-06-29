require 'machinist/active_record'
require File.expand_path(File.dirname(__FILE__) + '/blueprints')

#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
