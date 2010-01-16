class CheckController < ApplicationController
  
  def index 
    # index.html.haml
  end
  
  def show 
    @the_url = params[:url]
    redirect_to '/' if @the_url.nil?

    # the code to handle site not found / connection refused in lib/site.rb
    @site = Site.new(@the_url)
  end
  
end