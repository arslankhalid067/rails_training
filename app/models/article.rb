class Article < ApplicationRecord
    validates :title,:body, presence: true
    validates :title, uniqueness: true, length: {minimum: 2}
end
