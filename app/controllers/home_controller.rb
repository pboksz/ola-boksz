class HomeController < ApplicationController
  def index
    @title = t('travels.title')
  end

  def clock
    @title = t('clock.title')
  end

  def sitemap
    render :sitemap, layout: false
  end
end
