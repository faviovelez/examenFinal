json.extract! producto, :id, :nombre, :descripcion, :cantidad, :primer_imagen, :segunda_imagen, :created_at, :updated_at
json.url producto_url(producto, format: :json)