class HomeController < ApplicationController
  def index
    render :text => params.inspect
  end
end
