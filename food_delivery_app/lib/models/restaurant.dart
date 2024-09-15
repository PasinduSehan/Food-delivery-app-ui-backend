import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burger
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Snoky BBQ sauce, crypsy bacon, and onion rings make this beef burger a savory delight.",
      imagepath: "lib/images/burgers/1.jpg",
      price: 10.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Grild Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Snoky BBQ sauce, crypsy bacon, and onion rings make this beef burger a savory delight.",
      imagepath: "lib/images/burgers/2.jpeg",
      price: 10.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Grild Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Snoky BBQ sauce, crypsy bacon, and onion rings make this beef burger a savory delight.",
      imagepath: "lib/images/burgers/7.jpeg",
      price: 10.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Grild Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Snoky BBQ sauce, crypsy bacon, and onion rings make this beef burger a savory delight.",
      imagepath: "lib/images/burgers/1.jpg",
      price: 10.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Grild Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Snoky BBQ sauce, crypsy bacon, and onion rings make this beef burger a savory delight.",
      imagepath: "lib/images/burgers/1.jpg",
      price: 10.99,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Grild Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    //salad
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/salads/1.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/salads/3.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/salads/4.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/salads/6.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/salads/1.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    //sides
    Food(
      name: "French Fries",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/sides/1.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "French Fries",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/sides/3.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "French Fries",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/sides/2.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "French Fries",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/sides/1.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    Food(
      name: "French Fries",
      description:
          "Quinoa mixed with cucumbers,tomatoes,bell peppers, and a lemon vinaigrette.",
      imagepath: "lib/images/sides/1.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Avocado", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),
    //dessert
    Food(
      name: "Cheesecake",
      description:
          "Creamy Cheesecake on a graham cracker crust,with a berry compote.",
      imagepath: "lib/images/desserts/6.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy Cheesecake on a graham cracker crust,with a berry compote.",
      imagepath: "lib/images/desserts/1.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy Cheesecake on a graham cracker crust,with a berry compote.",
      imagepath: "lib/images/desserts/2.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy Cheesecake on a graham cracker crust,with a berry compote.",
      imagepath: "lib/images/desserts/6.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Creamy Cheesecake on a graham cracker crust,with a berry compote.",
      imagepath: "lib/images/desserts/6.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),
    //drinks
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagepath: "lib/images/drinks/1.jpeg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagepath: "lib/images/drinks/6.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagepath: "lib/images/drinks/3.jpeg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagepath: "lib/images/drinks/4.jpeg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagepath: "lib/images/drinks/5.jpeg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavor", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.49),
        Addon(name: "Ginger Zest", price: 1.99),
      ],
    ),
  ];

  /*
  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  O P E R A T I O N S

  */

  //user cart
  final List<CartItem> _cart = [];

  String _deliveryAddress = "99,Hollywood bly";
  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart iteam already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food item are the same
      bool isSameFood = item.food == food;
      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    //if the item already exists,increase it is quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //other wise add a new cart item tothe cart
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

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
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

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery adress
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*
  H E L P E R S

  */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    //format the date to include upto seconds only
    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Deliverying to:$deliveryAddress");

    return receipt.toString();
  }

  //format double value in to money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons in to a strings summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
