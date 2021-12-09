class User < ActiveRecord::Base

    # has_many :added_climbs, source: :climbs

    has_many :tick_lists
    has_many :climbs, through: :tick_lists

end