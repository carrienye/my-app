# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :string
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  has_many(:books, { :class_name => "Book", :foreign_key => "author_id", :dependent => :destroy })
  validates(:name, { :presence => true })

end
