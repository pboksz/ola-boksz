class HomeController < ApplicationController
  def index

  end

  def sitemap
    render :sitemap, layout: false
  end
end
