module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    ratings_amount = ratings.count
    sum_all = ratings.map {|rating| rating.score}.sum
    average = sum_all / ratings_amount
    return average.to_f
  end

  def pluralize_rating
    return "rating".pluralize(ratings.count)
  end

end
