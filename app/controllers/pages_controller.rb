class PagesController < ApplicationController
skip_before_filter :authorize, only: [:home, :logo, :order]

  def home
  end


  def order
  end

  def logo
    render 'testlogo'
  end

end
