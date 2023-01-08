class HomeController < ApplicationController
  def index

  end

  def clock

  end

  def sitemap
    render :sitemap, layout: false
  end
end
