class User < ActiveRecord::Base
    validates :name, length: { minimum: 2 }, presence: true
end
