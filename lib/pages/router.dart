import 'package:techlingo/common/widgets/bottom_bar.dart';
// import 'package:techlingo/features/address/screens/address_screen.dart';
import 'package:techlingo/pages/admin_words_add.dart';
import 'package:techlingo/pages/signup.dart';
import 'package:techlingo/pages/login.dart';
// import 'package:techlingo/features/home/screens/category_deals_screen.dart';
// import 'package:techlingo/features/home/screens/home_screen.dart';
// import 'package:techlingo/features/order_details/screens/order_details.dart';
// import 'package:techlingo/features/product_details/screens/product_details_screen.dart';
// import 'package:techlingo/features/search/screens/search_screen.dart';
// import 'package:techlingo/models/order.dart';
import 'package:techlingo/models/word.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginPage(),
      );
      
    case SignupPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignupPage(),
      );

    // case HomeScreen.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const HomeScreen(),
    //   );
    // case BottomBar.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const BottomBar(),
    //   );
    case admin_words_add.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const admin_words_add(),
      );

    // case CategoryDealsScreen.routeName:
    //   var category = routeSettings.arguments as String;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => CategoryDealsScreen(
    //       category: category,
    //     ),
    //   );
    // case SearchScreen.routeName:
    //   var searchQuery = routeSettings.arguments as String;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => SearchScreen(
    //       searchQuery: searchQuery,
    //     ),
    //   );
    // case ProductDetailScreen.routeName:
    //   var product = routeSettings.arguments as Product;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => ProductDetailScreen(
    //       product: product,
    //     ),
    //   );
    // case AddressScreen.routeName:
    //   var totalAmount = routeSettings.arguments as String;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => AddressScreen(
    //       totalAmount: totalAmount,
    //     ),
    //   );
    // case OrderDetailScreen.routeName:
    //   var order = routeSettings.arguments as Order;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => OrderDetailScreen(
    //       order: order,
    //     ),
    //   );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
