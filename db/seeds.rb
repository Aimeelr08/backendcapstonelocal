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
  { title: "Sample Title 1", body: "Sample body 1" },
  { title: "Sample Title 2", body: "Sample body 2" },
  { title: "Sample Title 3", body: "Sample body 3" },
  { title: "Another Post", body: "WOW!" },
]

post_attributes.each do |attributes|
  Post.where(attributes).first_or_create
end

comment_attributes = [
  { content: "comment 1", post_id: Post.first.id },
  { content: "comment 2", post_id: Post.first.id },
  { content: "comment 3", post_id: Post.first.id },
  { content: "This is the best!", post_id: Post.last.id },
]

comment_attributes.each do |attributes|
  Comment.where(attributes).first_or_create
end
