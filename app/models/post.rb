class Post < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }
  has_many :comments
  # comment 뒤에 -s 붙은거 유의!!
end
