module ApplicationHelper
  def pluralize_upcase(count, word)
    count.to_s + " " + word.pluralize(count).upcase
  end
end
