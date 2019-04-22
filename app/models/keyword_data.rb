class KeywordData < ActiveRecord::Base
  belongs_to :keyword
  after_create :update_keyword_searches

  private

    def update_keyword_searches
      keyword.update_attributes(:searches => keyword.searches ? keyword.searches + data : data)
    end
end
