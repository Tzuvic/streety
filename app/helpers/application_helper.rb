module ApplicationHelper
  def favorite_text
    return @favorite_exists ? "fas fa-bookmark" : "far fa-bookmark"
  end

  def recommendation_text
    return @recommendation_exists ? "fas fa-thumbs-up" : "far fa-thumbs-up"
  end
end
