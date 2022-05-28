import 'package:auto_route/auto_route.dart';
import 'package:open_fashion_app/views/blog/blog_view.dart';
import 'package:open_fashion_app/views/checkout/checkout_view.dart';

import '../../main_view.dart';
import '../../views/home/home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainView,
      name: 'main',
      path: '/main',
      initial: true,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(initial: true, page: HomeView, name: 'home', path: 'home'),
        AutoRoute(page: BlogView, name: 'blogs', path: 'blogs'),
        AutoRoute(page: CheckoutView, name: 'checkOut', path: 'checkOut'),
      ],
    ),
  ],
)
class $AppRouter {}
