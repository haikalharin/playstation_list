import 'package:base_app_new/pages/firstPage/list_article_vertical.dart';
import 'package:base_app_new/routes/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.firstPage:
        return MaterialPageRoute(
            builder: (_) => ListArticleVertical());

    // End Created By Fatur Rahman

//      case RouteName.collection:
//        return MaterialPageRoute(builder: (_) => CollectionPage());

    // case RouteName.order:
    //   return MaterialPageRoute(builder: (_) => OrderPage());
    // case RouteName.movieDetailScreen:
    //   final MovieDetailArguments arguments = settings.arguments;
    //   return MaterialPageRoute(
    //     builder: (_) => MovieDetailScreen(
    //       movieId: arguments.movieId,
    //       coverPath: arguments.coverPath,
    //       title: arguments.title,
    //     ),
    //   );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ),
        );
    }
  }

  static Map<String, WidgetBuilder> _getCombinedRoutes() => {};

  static Map<String, WidgetBuilder> getAll() => _getCombinedRoutes();
}