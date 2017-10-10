# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post_attributes = [
  { title: "First Post", body: "today was a good day that I had a good time listening to music." },
  { title: "Study Post", body: "time to get a dent into the study workload" },
  { title: "Lovely Post", body: "what a beautiful and lovely person that person is" },
]

post_attributes.each do |attributes|
  Post.where(attributes).first_or_create
end

comment_attributes = [
  { content: "that is great music skills", post_id: Post.first.id },
  { content: "that sounds dull and need to work on other skills", post_id: Post.first.id },
  { content: "This is the best!", post_id: Post.last.id },
]

comment_attributes.each do |attributes|
  Comment.where(attributes).first_or_create
end
