struct Carrito {
  var llevaCarrito: [[Producto: Int ]] 

  init(){
    llevaCarrito = []
  }
  mutating func addCarrito(producto: Producto, cantidad: Int){
    let addDicii = [producto : cantidad]
    llevaCarrito.append(addDicii)
  }

  mutating func precioCarrito(){
    
  }

    
   func showProdc(){
    for producto in llevaCarrito{
      print(producto)
    }
  }
  
  
    
  
}