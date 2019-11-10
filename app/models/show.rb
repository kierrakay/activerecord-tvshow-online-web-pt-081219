class Show < ActiveRecord::Base 
  
def self.highest_rating 
  self.maximum(:rating)
end

def self.most_popular_show 
  #self.where(rating: highest_rating).first
  #self.where(rating: highest_rating) returns aray but we want one instance thats why we have .first above
  self.find_by(rating: highest_rating)
end

def self.lowest_rating 
  self.minimun(:rating)
end
end