require 'elasticsearch/model'

class Producto < ActiveRecord::Base
  has_many :galleries
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :nombre, analyzer: 'spanish'
      indexes :descripcion, analyzer: 'spanish'
    end
  end

  def buscar
  end

end

# Delete the previous articles index in Elasticsearch
Producto.__elasticsearch__.client.indices.delete index: Producto.index_name rescue nil

# Create the new index with the new mapping
Producto.__elasticsearch__.client.indices.create \
  index: Producto.index_name,
  body: { settings: Producto.settings.to_hash, mappings: Producto.mappings.to_hash }

# Index all article records from the DB to Elasticsearch
Producto.import
