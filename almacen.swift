

struct Almacen: Hashable {
  var inventario : [[Producto : Int]] 

  init(){
    inventario = []
  }

    /// FNCION QUE AGREGA PRODUCTOS AL ALMACEN 
  mutating func addProducto(producto: Producto, cantidad: Int){
    let addDici = [producto : cantidad]
    inventario.append(addDici)
  }
  /// FUNCION QUE REMUEVE PRODUCTOS DEL ALMACEN 
  mutating func removeProducto(producto: Producto, cantidad: Int){
    var i = 0;
    for var conta in inventario{
      if let total = conta[producto]{
        let total = total - cantidad
        print(producto, cantidad, i)
        conta[producto] = total
        inventario[i] = conta
      }
      i += 1
    } 
  }

  func showProdc(){
    for producto in inventario{
      print(producto)
    }
  }

  func hash(into hasher: inout Hasher) {
    hasher.combine(inventario)
  }

}



