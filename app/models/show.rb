class Show<ActiveRecord::Base
    

    def self.highest_rating
        self.maximum("rating")
    end

    def self.most_popular_show
        most_popular=self.highest_rating
        self.find_by(rating:most_popular)
    end

    def self.lowest_rating
        self.minimum("rating")
    end
    def self.least_popular_show
        lowest_rating=self.lowest_rating
        self.find_by(rating:lowest_rating)
    end
    def self.ratings_sum
        self.sum("rating")
    end
    def self.popular_shows
        self.select {|movies| movies.rating>5}
    end
    def self.shows_by_alphabetical_order
        self.order('name ASC')
    end
    

end