class HomeController < ApplicationController
  def index
    @newest = Product.order(:created_at).limit(4)
  end
end
