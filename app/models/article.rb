class Article < ApplicationRecord
    validates :title,:body, presence: true
    validates :title, uniqueness: true, length: {minimum: 2, maximum: 10}

    before_create do
        self.title="Callback appends " +self.title
    end
    after_initialize do |article|
        puts "You have initialized article with id #{article.id}"
    end
    after_find do |article|
        puts "You have found article with id #{article.id}"
    end
    after_touch do |article|
        puts "You have touch Article"
    end
end
