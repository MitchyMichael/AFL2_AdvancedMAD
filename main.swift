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

var option1 : String = "a"
var fnb : String = ""
var howMany : Int
var fnbMenu : [String] = []
var fnbCount : [String] = []

var menu = Menu()

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
        print("How many Gado-Gado you want to buy?")
        let howMany = readLine() ?? ""
        print("")

        fnbMenu.append("Gado-Gado")
        fnbCount.append(howMany)
        
      } else if (fnb.uppercased()) == "F02"{
        print("How many Chicken Satay you want to buy?")
        let howMany = readLine() ?? ""
        print("")

        fnbMenu.append("Chicken Satay")
        fnbCount.append(howMany)
        
      } else if (fnb.uppercased()) == "F01"{
        print("How many Nasi Padang you want to buy?")
        let howMany = readLine() ?? ""
        print("")

        fnbMenu.append("Nasi Padang")
        fnbCount.append(howMany)
        
      } else if (fnb.uppercased()) == "B02"{
        print("How many Mineral Water you want to buy?")
        let howMany = readLine() ?? ""
        print("")

        fnbMenu.append("Mineral Water")
        fnbCount.append(howMany)
        
      } else if (fnb.uppercased()) == "B01"{
        print("How many Ice Tea you want to buy?")
        let howMany = readLine() ?? ""
        print("")

        fnbMenu.append("Ice Tea")
        fnbCount.append(howMany)
        
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
