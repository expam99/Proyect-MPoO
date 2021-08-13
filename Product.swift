struct Producto:CustomStringConvertible  {

  var nombre: String = ""
  var precio: Double = 0.0
  var desc: String = ""
  var categorias: [Category]

  var description: String{
    return nombre
  }

  func showCategories(){
    for category in categorias{
      print(category)
    }
  }

  func isInCategory(category: Category) -> Bool{
    for item in categorias{
      if item.name == category.name{
        return true
      }
    }
    return false
  }
}

extension Producto: Hashable {
    static func == (hs: Producto, rhs: Producto) -> Bool {
        return hs.nombre == rhs.nombre && hs.precio == rhs.precio && hs.desc == rhs.desc 
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(nombre)
        hasher.combine(precio)
        hasher.combine(desc)
    }
}



