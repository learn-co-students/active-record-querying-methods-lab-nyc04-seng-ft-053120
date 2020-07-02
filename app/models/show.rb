class Show < ActiveRecord::Base
  def self.highest_rating
    # return the highest value in the rating column
    self.maximum("rating")
  end

  def self.most_popular_show
    # return the show with the highest rating
    highest_rating_value = self.highest_rating
    self.find_by(rating: highest_rating_value)
  end

  def self.lowest_rating
    # returns the lowest value in the ratings column
    self.minimum("rating")
  end

  def self.least_popular_show
    # returns the show with the lowest rating
    lowest_rating_value = self.lowest_rating
    self.find_by(rating: lowest_rating_value)
  end

  def self.ratings_sum
    # returns the sum of all of the ratings.
    self.sum(:rating)
  end

  def self.popular_shows
    # returns an array of all of the shows that have a rating greater than 5
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    # returns an array of all of the shows sorted in alphabetical order according to their names
    self.all.order('name asc')
  end
end