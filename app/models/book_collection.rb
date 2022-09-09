class BookCollection < ApplicationRecord
    validates :title, presence: true
end
