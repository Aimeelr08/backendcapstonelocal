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
  { content: "comment 1" },
  { content: "comment 2" },
  { content: "comment 3" },
  { content: "This is the best!"},
]

comment_attributes.each do |attributes|
  Comment.where(attributes).first_or_create
end
