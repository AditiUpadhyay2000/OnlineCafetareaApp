class PagesController < ApplicationController
  def home
    @page = 'home'
    @content = 'home'
  end

  def catering
    @page = 'catering'
  end

  def info
    @content = 'info'
    @page = 'info'
  end
end
