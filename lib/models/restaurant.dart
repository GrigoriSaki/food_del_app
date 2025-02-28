import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:food_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    //burgers
    Food(
        name: "BBQ Bacon Bureger",
        description: "Our classic burger with bacon and BBQ sauce",
        imagePath: "lib/images/burgers/bbq_bacon.png",
        price: 7.90,
        category: FoodCategory.burgers,
        addons: [
          Addon(name: "Extra Bacon", price: 1.20),
          Addon(name: "Old Amsterdam Cheese", price: 1.10),
        ]),
    Food(
        name: "Big Onion Burger",
        description:
            "A massive Big Onion Burger with a thick and juicy beef patty, topped with crispy golden onion rings, melted sharp cheddar cheese, caramelized onions, and a smoky garlic aioli sauce.",
        imagePath: "lib/images/burgers/big_onion.png",
        price: 8.50,
        category: FoodCategory.burgers,
        addons: [
          Addon(name: "Extra Onion", price: 0.90),
          Addon(name: "Extra cheese", price: 0.70),
        ]),
    Food(
        name: "Classic Cheeseburger",
        description:
            "A close-up of a juicy cheeseburger with a golden toasted brioche bun, a thick beef patty covered in melted cheddar cheese, fresh lettuce, a slice of ripe tomato, and a drizzle of special sauce.",
        imagePath: "lib/images/burgers/classic_cheeseburger.png",
        price: 7.00,
        category: FoodCategory.burgers,
        addons: [
          Addon(name: "Bacon", price: 1.50),
          Addon(name: "Extra cheese", price: 0.70),
        ]),
    Food(
        name: "Spicy Jalapeno Burger",
        description:
            "A delicious spicy burger with a thick beef patty, melted pepper jack cheese, crispy bacon, fresh jalapeño slices, and a drizzle of sriracha mayo.",
        imagePath: "lib/images/burgers/spicy_jalapeno.png",
        price: 8.99,
        category: FoodCategory.burgers,
        addons: [
          Addon(name: "Cherry tomatoes", price: 1.20),
          Addon(name: "Extra jalapeno", price: 0.70),
        ]),
    Food(
        name: "Truffle Mushroom Burger",
        description:
            "A rich and savory truffle mushroom burger featuring a juicy beef patty, sautéed mushrooms in truffle oil, gooey melted brie cheese, and a toasted artisanal bun.",
        imagePath: "lib/images/burgers/truffle_mushroom.png",
        price: 9.00,
        category: FoodCategory.burgers,
        addons: [
          Addon(name: "Extra beef", price: 1.00),
          Addon(name: "Avocado", price: 1.60),
        ]),

    //desserts
    Food(
        name: "Chocolate Lava Cake",
        description:
            "A rich chocolate lava cake with a gooey molten center, served with scoops of vanilla ice cream",
        imagePath: "lib/images/desserts/chocolade_lava.png",
        price: 8.50,
        category: FoodCategory.desserts,
        addons: [
          Addon(name: "Extra Ice Cream", price: 1.20),
        ]),
    Food(
        name: "Strawberry Cake",
        description:
            "A delicate strawberry cake with layers of white chocolate, topped with fresh strawberries",
        imagePath: "lib/images/desserts/strawberry_cake.png",
        price: 9.20,
        category: FoodCategory.desserts,
        addons: [
          Addon(name: "White chocolade sauce", price: 0.99),
        ]),
    Food(
        name: "Tiramisu ",
        description:
            "A classic tiramisu with layers of mascarpone cream, soaked ladyfingers, and a dusting of cocoa powder",
        imagePath: "lib/images/desserts/tiramisu.png",
        price: 7.20,
        category: FoodCategory.desserts,
        addons: [
          Addon(name: "Caramel sauce", price: 0.99),
        ]),

    //drinks
    Food(
        name: "Hot Chocolate ",
        description:
            "A cozy cup of hot chocolate in a rustic ceramic mug, topped with a swirl of whipped cream and chocolate shavings",
        imagePath: "lib/images/drinks/chocolade.png",
        price: 3.20,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "2 cinnamon sticks", price: 0.60),
        ]),
    Food(
        name: "Coca Cola",
        description:
            "Classic glass of Coca Cola with ice cubes and slice of Lemon",
        imagePath: "lib/images/drinks/cola.png",
        price: 2.00,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "Takeaway cup", price: 0.40),
        ]),
    Food(
        name: "Classic Lemonade ",
        description:
            "A glass pitcher of homemade lemonade with lemon slices, fresh mint leaves and ice cubes",
        imagePath: "lib/images/drinks/lemonade.png",
        price: 2.20,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "Takeaway cup", price: 0.40),
          Addon(name: "Extra mint", price: 0.20),
        ]),
    Food(
        name: "Iced Matcha Latte",
        description:
            "A refreshing iced matcha latte in a tall glass, beautifully layered with milk and vibrant green matcha.",
        imagePath: "lib/images/drinks/matcha.png",
        price: 3.50,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "Matcha powder ", price: 0.20),
        ]),
    Food(
        name: "Fresh Orange Juice",
        description:
            "A tall glass of freshly squeezed orange juice with pulp, garnished with a slice of orange",
        imagePath: "lib/images/drinks/orange.png",
        price: 1.60,
        category: FoodCategory.drinks,
        addons: [
          Addon(name: "Takeaway cup", price: 0.40),
        ]),

    //salads
    Food(
        name: "Avocado & Quinoa Salad",
        description:
            "A healthy salad, with diced avocado, cooked quinoa, cherry tomatoes, red bell pepper, corn, and fresh cilantro",
        imagePath: "lib/images/salads/avocado.png",
        price: 6.50,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Puff peas", price: 0.60),
        ]),

    Food(
        name: "Greek Salad",
        description:
            "A fresh Greek salad ,filled with crisp lettuce, juicy cherry tomatoes, sliced ​cucumbers, red onions, black olives, and feta cheese cubes",
        imagePath: "lib/images/salads/greek.png",
        price: 5.40,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Extra cheese", price: 0.40),
          Addon(name: "Extra green olives", price: 0.70),
        ]),

    Food(
        name: "Caesar Salad with Grilled Chicken",
        description:
            "A classic Caesar salad, featuring crisp romaine lettuce, grilled chicken slices, crunchy croutons, and shaved parmesan cheese.",
        imagePath: "lib/images/salads/cesar.png",
        price: 7.20,
        category: FoodCategory.salads,
        addons: [
          Addon(name: "Avocado", price: 0.60),
          Addon(name: "Creamy Cesar dressing", price: 0.40),
        ]),

    //sides
    Food(
        name: "Crispy Fries",
        description: "Golden, crispy French fries, lightly salted",
        imagePath: "lib/images/sides/fries.png",
        price: 1.70,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Ketchup", price: 0.15),
          Addon(name: "Mayonaise", price: 0.20),
        ]),

    Food(
        name: "Garlic Bread",
        description:
            "Warm, crispy garlic bread slices with melted butter and fresh parsley",
        imagePath: "lib/images/sides/garlic_bread.png",
        price: 2.00,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Cream sauce", price: 0.30),
        ]),

    Food(
        name: "Mozarella Sticks",
        description:
            "crispy mozzarella sticks with a gooey, melted cheese center and marinara sauce,",
        imagePath: "lib/images/sides/mozarella_sticks.png",
        price: 2.00,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Ketchup", price: 0.15),
          Addon(name: "Mayonaise", price: 0.20),
          Addon(name: "Cream sauce", price: 0.30),
        ]),

    Food(
        name: "Onion Rings",
        description:
            "A stack of crunchy, deep-fried onion rings with a golden batter and spicy dipping sauce",
        imagePath: "lib/images/sides/onion_rings.png",
        price: 1.90,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Mayonaise", price: 0.20),
          Addon(name: "Cream sauce", price: 0.30),
          Addon(name: "Fresh parsley", price: 0.15),
        ]),

    Food(
        name: "Loaded Potato Wedges",
        description:
            "Crispy potato wedges topped with melted cheddar cheese, crispy bacon bits, and fresh chives.",
        imagePath: "lib/images/sides/potato_wedges.png",
        price: 2.20,
        category: FoodCategory.sides,
        addons: [
          Addon(name: "Sour Cream", price: 0.20),
        ]),
  ];

// G E T T E R S

  List<CartItem> get getCart => cart;

// O P E R A T I O N S

  final List<CartItem> cart = [];

//add to cart

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (cart[cartIndex].quantity > 1) {
        cart[cartIndex].quantity--;
      } else {
        cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

//display amount of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//display total price of items in cart

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in cart) {
      double itemTotal = cartItem.totalPrice;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//clear cart

  void clearCart() {
    cart.clear();
    notifyListeners();
  }

// H E L P E R S

//generate a receipt

//convert double value to money

//format list of addons into a string summary
}
