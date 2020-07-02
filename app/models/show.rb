class Show < ActiveRecord::Base
    #return the highest value in the ratings column
    def self.highest_rating
        self.maximum("rating")
    end

    #this method should return the show with the highest rating. hint: use the highest_rating method as a helper method.
    def self.most_popular_show
        pop = self.highest_rating
        self.find_by(rating: pop)
    end

    #returns the lowest value in the ratings column.
    def self.lowest_rating
        self.minimum("rating")
    end

    #returns the show with the lowest rating.
    def self.least_popular_show
        show = self.lowest_rating
        self.find_by(rating: show)
    end

    #returns the sum of all of the ratings
    def self.ratings_sum
        self.sum("rating")
    end

    #returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
    def self.popular_shows
        self.where("rating > 5")

    end

    #returns an array of all of the shows sorted in alphabetical order according to their names. hint: use the order Active Record method.
    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end