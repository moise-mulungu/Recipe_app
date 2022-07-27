# Service to download ftp files from the server
class ShoppingListController < ApplicationController
  def index
    @shopping_list = Food.all
  end
end
