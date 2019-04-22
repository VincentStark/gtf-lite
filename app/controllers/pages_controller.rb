class PagesController < ApplicationController
  def home
    @keywords = Keyword.limit(10).order(searches: :desc)
  end

  def about
  end
end
