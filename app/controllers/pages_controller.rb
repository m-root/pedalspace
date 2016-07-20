class PagesController < ApplicationController
  def home
    @mechanics = Mechanic.all
  end
end
