# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  description :string
#  image       :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer
#  genre_id    :integer
#
class Book < ApplicationRecord
  has_many(:favorites, { :class_name => "Favorite", :foreign_key => "book_id", :dependent => :destroy })
  belongs_to(:author, { :required => true, :class_name => "Author", :foreign_key => "author_id" })
  belongs_to(:genre, { :required => true, :class_name => "Genre", :foreign_key => "genre_id" })
  validates(:title, { :presence => true })
  validates(:author_id, { :presence => true })
end
