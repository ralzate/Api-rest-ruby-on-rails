# README

# Listar productos
curl http://localhost:3000/api/v1/products

# Producto por ID
curl http://localhost:3000/api/v1/products/1

# Nuevo producto
curl -X POST -H "Content-Type: application/json" -d '{"name":"Nuevo producto", "description":"Descripción del nuevo producto", "price": 19.99}' http://localhost:3000/api/v1/products

# Actualizar producto
curl -X PUT -H "Content-Type: application/json" -d '{"name":"Producto actualizado"}' http://localhost:3000/api/v1/products/1

# Eliminar producto
curl -X DELETE http://localhost:3000/api/v1/products/1
