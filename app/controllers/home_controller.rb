class HomeController < ApplicationController
  def welcome
    render layout: 'welcomelayout'
  end
end
