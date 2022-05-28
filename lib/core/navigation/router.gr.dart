// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../main_view.dart' as _i1;
import '../../views/blog/blog_view.dart' as _i3;
import '../../views/checkout/checkout_view.dart' as _i4;
import '../../views/home/home_view.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    Main.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainView());
    },
    Home.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeView());
    },
    Blogs.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BlogView());
    },
    CheckOut.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CheckoutView());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/main', fullMatch: true),
        _i5.RouteConfig(Main.name, path: '/main', children: [
          _i5.RouteConfig('#redirect',
              path: '', parent: Main.name, redirectTo: 'home', fullMatch: true),
          _i5.RouteConfig(Home.name, path: 'home', parent: Main.name),
          _i5.RouteConfig(Blogs.name, path: 'blogs', parent: Main.name),
          _i5.RouteConfig(CheckOut.name, path: 'checkOut', parent: Main.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainView]
class Main extends _i5.PageRouteInfo<void> {
  const Main({List<_i5.PageRouteInfo>? children})
      : super(Main.name, path: '/main', initialChildren: children);

  static const String name = 'Main';
}

/// generated route for
/// [_i2.HomeView]
class Home extends _i5.PageRouteInfo<void> {
  const Home() : super(Home.name, path: 'home');

  static const String name = 'Home';
}

/// generated route for
/// [_i3.BlogView]
class Blogs extends _i5.PageRouteInfo<void> {
  const Blogs() : super(Blogs.name, path: 'blogs');

  static const String name = 'Blogs';
}

/// generated route for
/// [_i4.CheckoutView]
class CheckOut extends _i5.PageRouteInfo<void> {
  const CheckOut() : super(CheckOut.name, path: 'checkOut');

  static const String name = 'CheckOut';
}
