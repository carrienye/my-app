# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  genre_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genre < ApplicationRecord
  has_many(:books, { :class_name => "Book", :foreign_key => "genre_id", :dependent => :destroy })

end
