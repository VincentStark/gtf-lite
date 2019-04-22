class Keyword < ActiveRecord::Base
  has_many :keyword_data

  def to_param
    CGI.escape(name)
  end
end
