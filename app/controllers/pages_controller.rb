class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_product

  def index
  end

  private

    def set_product
      @producto = Producto.new
    end

end
