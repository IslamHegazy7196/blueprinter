# app/blueprints/product_blueprint.rb
class ProductBlueprint < Blueprinter::Base
    identifier :id
  
    fields :name, :description, :price
  end
  