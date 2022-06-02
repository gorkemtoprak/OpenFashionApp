import 'package:auto_route/auto_route.dart';
import 'package:open_fashion_app/views/blog/blog_view.dart';
import 'package:open_fashion_app/views/checkout/checkout_view.dart';
import 'package:open_fashion_app/views/menu/contact_us/contact_us_view.dart';
import 'package:open_fashion_app/views/menu/my_adress/my_adress_view.dart';
import 'package:open_fashion_app/views/menu/payment/payment_view.dart';
import 'package:open_fashion_app/views/products/products_view.dart';
import 'package:open_fashion_app/views/products/subviews/products_detail_view.dart';

import '../../main_view.dart';
import '../../views/home/home_view.dart';
import '../../views/menu/about_us/about_us_view.dart';

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
        AutoRoute(page: ProductsView, name: 'products', path: 'products'),
        AutoRoute(page: BlogView, name: 'blogs', path: 'blogs'),
        AutoRoute(page: CheckoutView, name: 'checkOut', path: 'checkOut'),
      ],
    ),
    AutoRoute(
      page: AboutUsView,
      name: 'aboutUs',
      path: '/aboutUs',
    ),
    AutoRoute(
      page: ContactUsView,
      name: 'contactUs',
      path: '/contactUs',
    ),
    AutoRoute(
      page: PaymentView,
      name: 'payment',
      path: '/payment',
    ),
    AutoRoute(
      page: ProductsDetailView,
      name: 'productDetail',
      path: '/productDetail',
    ),
    AutoRoute(
      page: MyAdressView,
      name: 'myAdress',
      path: '/myAdress',
    ),
  ],
)
class $AppRouter {}
