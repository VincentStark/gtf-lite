class KeywordsController < ApplicationController
  def index
    @search = Keyword.search(params[:q])
    @search.sorts = 'searches DESC' if @search.sorts.empty?
    @keywords = @search.result.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @keyword = Keyword.find_by_name(CGI.unescape(params[:id]))
    if @keyword.nil?
      flash[:error] = 'Keyword is not found'
      redirect_to root_path
    else
      @chart_data =
        (1.month.ago.to_date..Date.today).map { |date|
          point = @keyword.keyword_data.find_by_collected_at(date.at_midnight)
          point.nil? ? nil : point.data
        }
      render 'show'
    end
  end
end
