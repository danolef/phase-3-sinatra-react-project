class Climb < ActiveRecord::Base
    has_many :tick_lists
    has_many :users, through: :tick_lists
end