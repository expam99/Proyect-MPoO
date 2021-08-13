
import Foundation

func main(){
  let menuPrincipal = Menu()
  var almacen = Almacen()
  


//// CATEGORIAS   
  let zapatos = Category(name: "Zapatos")
  let lacteos = Category(name: "Lacteos")
  let quesos = Category(name: "Quesos")
  let panela = Category(name: "Panela")
  let oaxaca = Category(name: "Oaxaca")
  let ropa = Category(name: "ropaM")
//// PRUDUCTOS 
  
  let quesoLaVilla = Producto(nombre: "Queso la villa", precio: 10.0, desc: "Rico queso", categorias:[panela, oaxaca])
  let pants = Producto(nombre:"pants adidas",precio:30.5,desc:"pants nice", categorias: [ropa])
  let shirt = Producto(nombre:"shirt nike", precio:5.25, desc:"nice shirt", categorias: [ropa])
  let short = Producto(nombre:"short adidas", precio:7.25, desc:"nice short", categorias: [ropa])

  //// CATEGORIAS ADERIDAS
      menuPrincipal.addCategory(category: zapatos)
      menuPrincipal.addCategory(category: lacteos)
      menuPrincipal.addCategory(category:ropa)

  //// SUBcATEGORIAS ADERIDAS 
    quesos.addSubCategory(category: oaxaca)
    lacteos.addSubCategory(category: quesos)
    quesos.addSubCategory(category: panela)

    quesoLaVilla.showCategories()
    print("----------------------")
    menuPrincipal.display()

/// PRODUCTOS AGREGADOS AL ALMACEN 

    almacen.addProducto(producto:pants, cantidad:30)
    almacen.addProducto(producto:quesoLaVilla, cantidad: 10)
    almacen.addProducto(producto:shirt,cantidad:15)
    almacen.addProducto(producto:short,cantidad:45)
    

/// MOSTRAR ALMACEN ///
print("---------------------------------------------")
print("->____________el almacen actual____________<-")
almacen.showProdc()

/// PRODUCTOS RETIRADOS DEL ALMACEN 
    almacen.removeProducto(producto:short,cantidad:10)

/// ALMACEN ACTUALIZADO 
print("---------------------------------------------")
print("->____________el almacen actual____________<-")
almacen.showProdc()

/// PRODUCTOS EN EL CARRITO 
print("---------------------------------------------\n")
print("->____________Productos en el carrito____________<-")


    
}

main()
