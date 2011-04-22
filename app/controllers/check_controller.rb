class CheckController < ApplicationController
  
  def index 
    # index.html.haml
  end
  
  def show 
    @the_url = params[:url]
    redirect_to '/' and return if @the_url.blank?

    # the code to handle site not found / connection refused in lib/site.rb
    @site = Site.new(@the_url)
  end
  
end
