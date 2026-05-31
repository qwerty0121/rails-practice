# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Userを作成
user1 = User.find_or_create_by!(name: "Andy")
user2 = User.find_or_create_by!(name: "Bob")
user3 = User.find_or_create_by!(name: "Cindy")

# Articleを作成
article1 = Article.find_or_create_by!(title: "test article 1") do |article|
  article.body = "This is test article 1."
  article.user_id = user1.id
end
article2 = Article.find_or_create_by!(title: "test article 2") do |article|
  article.body = "This is test article 2."
  article.user_id = user1.id
end
article3 = Article.find_or_create_by!(title: "test article 3") do |article|
  article.body = "This is test article 3."
  article.user_id = user1.id
end
article4 = Article.find_or_create_by!(title: "test article 4") do |article|
  article.body = "This is test article 4."
  article.user_id = user2.id
end
article5 = Article.find_or_create_by!(title: "test article 5") do |article|
  article.body = "This is test article 5."
  article.user_id = user3.id
end

# Commentを作成
Comment.find_or_create_by!(content: "test comment 1") do |comment|
  comment.user_id = user1.id
  comment.article_id = article1.id
end
Comment.find_or_create_by!(content: "test comment 2") do |comment|
  comment.user_id = user1.id
  comment.article_id = article1.id
end
Comment.find_or_create_by!(content: "test comment 3") do |comment|
  comment.user_id = user1.id
  comment.article_id = article1.id
end
Comment.find_or_create_by!(content: "test comment 4") do |comment|
  comment.user_id = user1.id
  comment.article_id = article1.id
end
Comment.find_or_create_by!(content: "test comment 5") do |comment|
  comment.user_id = user1.id
  comment.article_id = article2.id
end
Comment.find_or_create_by!(content: "test comment 6") do |comment|
  comment.user_id = user1.id
  comment.article_id = article2.id
end
Comment.find_or_create_by!(content: "test comment 7") do |comment|
  comment.user_id = user2.id
  comment.article_id = article3.id
end
Comment.find_or_create_by!(content: "test comment 8") do |comment|
  comment.user_id = user2.id
  comment.article_id = article3.id
end
Comment.find_or_create_by!(content: "test comment 9") do |comment|
  comment.user_id = user3.id
  comment.article_id = article4.id
end
Comment.find_or_create_by!(content: "test comment 10") do |comment|
  comment.user_id = user3.id
  comment.article_id = article4.id
end

# Tagを作成
tag1 = Tag.find_or_create_by!(name: "Ruby")
tag2 = Tag.find_or_create_by!(name: "Ruby on Rails")
tag3 = Tag.find_or_create_by!(name: "Go")

# Articleにタグを設定
article1.tags << [ tag1, tag2 ]
article2.tags << tag2
article4.tags << tag1
article5.tags << [ tag1, tag3 ]
