class TickList < ActiveRecord::Base
    belongs_to :user
    belongs_to :climb
end