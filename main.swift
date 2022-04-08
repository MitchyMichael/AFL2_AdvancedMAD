var option1 : String = "a"
var fnb : String = ""
var howMany : Int
var fnbMenu : [String] = []
var fnbCount : [String] = []

class Menu {
  func printMainMenu(){
    print("============================")
    print("    Point of Sales (PoS)"    )
    print("============================")
    print("")

    print("Options:")
    print("[1] Buy Food")
    print("[2] Shopping Cart")
    print("[x] Exit")
    print("")
  }

  func printOption1Menu(){
    print("Hi, we have 5 Food & Beverage options for you")
    print("---------------------------------------------")
    print("[F03] Gado-Gado")
    print("[F02] Chicken Satay")
    print("[F01] Nasi Padang")
    print("[B02] Mineral Water")
    print("[B01] Ice Tea")
    print("[Q] Back to Main Menu")
    print("")
  }
}
var menu = Menu()

class AddFood {
  var foodName : String

  init (foodName: String){
    self.foodName = foodName
  }

  func printAddMenu(){
    print("How many \(self.foodName) you want to buy?")
    let howMany = readLine() ?? ""
    print("")

    fnbMenu.append("\(self.foodName)")
    fnbCount.append(howMany)
  }
}

while ((option1.lowercased()) != "x"){
  
  menu.printMainMenu()
  print("Your choise?")
  let option1 = readLine() ?? ""
  print("")
  
  if option1 == "1"{
    menu.printOption1Menu()
    while ((fnb.uppercased()) != "Q"){
      
      print("Your F&B choice?")
      let fnb = readLine() ?? ""
      print("")

      if (fnb.uppercased()) == "F03"{
        let addFood = AddFood(foodName: "Gado-Gado")
        addFood.printAddMenu()
        
      } else if (fnb.uppercased()) == "F02"{
        let addFood = AddFood(foodName: "Chicken Satay")
        addFood.printAddMenu()
        
      } else if (fnb.uppercased()) == "F01"{
        let addFood = AddFood(foodName: "Nasi Padang")
        addFood.printAddMenu()
        
      } else if (fnb.uppercased()) == "B02"{
        let addFood = AddFood(foodName: "Mineral Water")
        addFood.printAddMenu()
        
      } else if (fnb.uppercased()) == "B01"{
        let addFood = AddFood(foodName: "Ice Tea")
        addFood.printAddMenu()
        
      } else if (fnb.uppercased()) == "Q"{
        break
        
      } else {
        print("Error")
        print("Error")
        print("Error")
        print("")
        
      }
      
    }
     
  } else if option1 == "2" {
    if fnbMenu.isEmpty && fnbCount.isEmpty {
      print("Shopping cart is empty!")
    } else {
      var i = 0
      let arrayCount = fnbMenu.count

      print("Shopping Cart (\(arrayCount) items)")
      while i<arrayCount{
        print("\(fnbCount[i])" + " \(fnbMenu[i])")
        i += 1
      }
      print("")
          
    }
      
  } else if (option1.lowercased()) == "x"{
      break
    
  } else {
    print("Error")
    print("Error")
    print("Error")
    print("")
      
  }
}
