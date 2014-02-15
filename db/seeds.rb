# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p = Post.new(title: "first post", body: "1st body" )
p.save
c = p.comments.new(commenter: "bj", body: "I'm winner")
c.save
Comment.create(commenter: "bo", body: "I'm loser", post_id: 1)
