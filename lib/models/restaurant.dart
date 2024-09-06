import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pizza_app/models/cart_item.dart';
import 'package:pizza_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of foosd menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger", 
      description: "A juicy chicken patty with melted chadder, lettuce, tomato and a hint of onion and pickle", 
      imagePath: "lib/images/burgers/Cheese_burger.jpg", 
      price: 7.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger", 
      description: "Smoky BBQ sauce, crispy bacon and onion rings", 
      imagePath: "lib/images/burgers/BBQ_burger.jpg", 
      price: 9.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Grilled onion", price: 1.99),
        Addon(name: "Jalapenos", price: 1.99),
        Addon(name: "Extra BBQ sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Veggie Burger", 
      description: "A hearty veggie patty topped with freash avacodo, lettuce, and tomato", 
      imagePath: "lib/images/burgers/Veggie_burger.jpg", 
      price: 9.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Vegan cheese", price: 0.99),
        Addon(name: "Grilled mushroom", price: 1.99),
        Addon(name: "Hummus spread", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger", 
      description: " A char-grilled braest topped with a slice of grilled pineapple, Swiss cheese", 
      imagePath: "lib/images/burgers/Aloha_burger.jpg", 
      price: 9.45, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger", 
      description: "This burger is a blue cheese lovers dream. ", 
      imagePath: "lib/images/burgers/Blue_Moon_burger.jpg", 
      price: 9.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    // salads

    Food(
      name: "Caesar Salad", 
      description:
       "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing. ", 
      imagePath: "lib/images/salads/Caesar_Salad.jpg", 
      price: 7.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.99),
        Addon(name: "Extra Pramesan", price: 1.90),
      ],
    ),
    Food(
      name: "Greek Salad", 
      description:
       "Tomatoes, cucumber, red onions, olives, feta cheese with olive oil and herbs. ", 
      imagePath: "lib/images/salads/Greek_Salad.jpg", 
      price: 8.40, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Feeta Cheese", price: 0.99),
        Addon(name: "kalamata Olives", price: 1.49),
        Addon(name: "Grilled Shrimp", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad", 
      description:
       "Quina mixed with cucumber, tomatoes, bell pepper and a lemon vinaigrette. ", 
      imagePath: "lib/images/salads/Quinoa_Salad.jpg", 
      price: 9.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Avacado", price: 0.99),
        Addon(name: "Feeta Cheese", price: 1.49),
        Addon(name: "Grilled Cheese", price: 1.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salad", 
      description:
       "Delight in the flavours of the East with this sesame-infused salad. ", 
      imagePath: "lib/images/salads/Asian_Sesame_Salad.jpg", 
      price: 9.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Mandarian Oranges", price: 0.99),
        Addon(name: "Almond Slivers", price: 1.50),
        Addon(name: "Extra Teriyaki Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "South West Chicken Salad", 
      description:
       "This colorful salad combines the zesty flavors of the SouthWest. ", 
      imagePath: "lib/images/salads/South_West_Chicken_Salad.jpg", 
      price: 9.99, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Pico De Gallo", price: 1.99),
        Addon(name: "Guacamole", price: 2.99),
      ],
    ),

    // sides

    Food(
      name: "Sweet Potato Fries", 
      description:
       "Crispy potatoes fries with a touch of salt. ", 
      imagePath: "lib/images/sides/Sweet_Potato_Fries.jpg", 
      price: 4.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Truffle Oil", price: 1.49),
        Addon(name: "Cajum Spice", price: 1.99),
      ],
    ),
    Food(
      name: "Onion Rings", 
      description:
       "Golden and crispy onion rings, perfect for dipping.", 
      imagePath: "lib/images/sides/Onion_Rings.jpg", 
      price: 3.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.99),
        Addon(name: "Parmesan Dust", price: 1.99),
      ],
    ),
    Food(
      name: "Garlic Bread", 
      description:
       "Warm and toasty garlic bread, topped with melted butter and parsley.", 
      imagePath: "lib/images/sides/Garlic_Bread.jpg", 
      price: 4.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Extra Garlic", price: 0.99),
        Addon(name: "Mozzarella Cheese", price: 1.49),
        Addon(name: "Marinara Dip", price: 1.99),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries", 
      description:
       "Savory sweet potato fries loaded with melted cheese,smoky bacon bits.", 
      imagePath: "lib/images/sides/Loaded_Sweet_Potato_Fries.jpg", 
      price: 4.49, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Sour Cream", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Green Onions", price: 0.99),
      ],
    ),
    Food(
      name: "Crispy Mac & Cheese Bites", 
      description:
       "Golden brown, bite-sized mac and cheese ball, perfect for on-the-on snacking", 
      imagePath: "lib/images/sides/Crispy_Mac&Cheese_Bites.jpg", 
      price: 4.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Bacon Bits", price: 0.99),
        Addon(name: "Jalapeno Slices", price: 1.99),
        Addon(name: "Sriracha Drizzle", price: 0.99),
      ],
    ),

    // desserts

    Food(
      name: "Chocolate Brownie", 
      description:
       "Rich and fudgy chocolate brownie, with chunks of chocolate", 
      imagePath: "lib/images/desserts/Chocolate_Brownie.jpg", 
      price: 5.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Vanila Icecream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake", 
      description:
       "Creamy cheesecake on a graham cracker crust, with a berry compote.", 
      imagePath: "lib/images/desserts/Cheesecake.jpg", 
      price: 6.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Apple Pie", 
      description:
       "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.", 
      imagePath: "lib/images/desserts/Apple_Pie.jpg", 
      price: 5.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.99),
        Addon(name: "Vanila Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Spice", price: 1.99),
      ],
    ),
    Food( 
      name: "Red Velvet Lava Cake", 
      description:
       "A delectable red velvet cake with a warm, gooey chocolate lava center", 
      imagePath: "lib/images/desserts/Red_Velvet_Lava_Cake.jpg", 
      price: 5.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 1.99),
        Addon(name: "Chocolate Sprinkles", price: 0.99),
      ],
    ),
    //  Food(
    //   name: "Crispy Mac & Cheese Bites", 
    //   description:
    //    "Golden brown, bite-sized mac and cheese ball, perfect for on-the-on snacking", 
    //   imagePath: "lib/images/burgers/Cheese_burger.jpg", 
    //   price: 4.99, 
    //   category: FoodCategory.sides, 
    //   availableAddons: [
    //     Addon(name: "Bacon Bits", price: 0.99),
    //     Addon(name: "Jalapeno Slices", price: 1.99),
    //     Addon(name: "Sriracha Drizzle", price: 0.99),
    //   ],
    // ),


    // drinks
 
    Food( 
      name: "Lemonade", 
      description:
       "Refreshing lemonade made with real lemons and a touch of sweetness", 
      imagePath: "lib/images/drinks/Lemonade.jpg", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.99),
        Addon(name: "Ginger Zest", price: 0.99),
      ],
    ),
    Food( 
      name: "Iced Tea", 
      description:
       "Chilled iced tea with a hint of lemon, served over ice", 
      imagePath: "lib/images/drinks/Iced_Tea.jpg", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Peach Flavour", price: 0.99),
        Addon(name: "Lemon Slices", price: 1.99),
        Addon(name: "Honey", price: 0.99),
      ],
    ),
    Food( 
      name: "Smoothie", 
      description:
       "A blend of fresh fruits and yogurt, perfect for a healthy boost", 
      imagePath: "lib/images/drinks/Smoothie.jpg", 
      price: 4.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Protein Powder", price: 0.99),
        Addon(name: "Almond Milk", price: 1.49),
        Addon(name: "Chia Seeds", price: 1.99),
      ],
    ),
    Food( 
      name: "Mojito", 
      description:
       "A Classic Cuban cocktail with muddled lime and mint, sweetened with sugar.", 
      imagePath: "lib/images/drinks/Mojito.jpg", 
      price: 4.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food( 
      name: "Caramel Macchiato", 
      description:
       "A layered coffee drink with steamed milk, espresso, and vanilla syrup.", 
      imagePath: "lib/images/drinks/Caramel_Macchiato.jpg", 
      price: 4.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.99),
        Addon(name: "Hazelnut Syrup", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
  ];

    //user cart
  final List<CartItem> _cart =[];

  // delivery address (which user can change/update)
  String _deliveryAddress = '99 Hollywood Blv';
  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  O P E R A T I O N S

  */



  // add to the cart 
  void addToCart(Food food, List<Addon> selectedAddons){
    // see there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food item is same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons = 
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if item alraedy exists, increase its quantity
    if(cartItem != null){
      cartItem.quantity++;
    }
    // otherwise add new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from the cart
  void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);
    if(cartIndex != -1){
      if(_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);  
      }
    }
    notifyListeners();
  }

  // get the total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;        
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get the total number of items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }


  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*

  H E L P E R S

  */

  // generate receipt
   String displayCartReceipt() {
   final receipt = StringBuffer();
   receipt.writeln("Here your receipt."); 
   receipt.writeln();
   
   // format the date to include up to seconds only 
   String formattedDate = 
   DateFormat('yyyy-mm-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    } 

    receipt.writeln("--------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(", ");
  }
}