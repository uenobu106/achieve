class Blog < ActiveRecord::Base
    validates :title, presence: true
    #:content,
    belongs_to :user
    has_many :comments,dependent: :destroy
end
