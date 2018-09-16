class Beer < ApplicationRecord
    belongs_to :brewery
    has_many :ratings

    def average_rating
        ratinglist = ratings.map {|r| r.score}
        return ratinglist.reduce(:+) / ratinglist.size
    end

end
