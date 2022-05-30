// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../main_view.dart' as _i1;
import '../../views/blog/blog_view.dart' as _i6;
import '../../views/checkout/checkout_view.dart' as _i7;
import '../../views/home/home_view.dart' as _i5;
import '../../views/menu/about_us/about_us_view.dart' as _i2;
import '../../views/menu/contact_us/contact_us_view.dart' as _i3;
import '../../views/menu/payment/payment_view.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    Main.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainView());
    },
    AboutUs.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AboutUsView());
    },
    ContactUs.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ContactUsView());
    },
    Payment.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PaymentView());
    },
    Home.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeView());
    },
    Blogs.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.BlogView());
    },
    CheckOut.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CheckoutView());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/main', fullMatch: true),
        _i8.RouteConfig(Main.name, path: '/main', children: [
          _i8.RouteConfig('#redirect',
              path: '', parent: Main.name, redirectTo: 'home', fullMatch: true),
          _i8.RouteConfig(Home.name, path: 'home', parent: Main.name),
          _i8.RouteConfig(Blogs.name, path: 'blogs', parent: Main.name),
          _i8.RouteConfig(CheckOut.name, path: 'checkOut', parent: Main.name)
        ]),
        _i8.RouteConfig(AboutUs.name, path: '/aboutUs'),
        _i8.RouteConfig(ContactUs.name, path: '/contactUs'),
        _i8.RouteConfig(Payment.name, path: '/payment')
      ];
}

/// generated route for
/// [_i1.MainView]
class Main extends _i8.PageRouteInfo<void> {
  const Main({List<_i8.PageRouteInfo>? children})
      : super(Main.name, path: '/main', initialChildren: children);

  static const String name = 'Main';
}

/// generated route for
/// [_i2.AboutUsView]
class AboutUs extends _i8.PageRouteInfo<void> {
  const AboutUs() : super(AboutUs.name, path: '/aboutUs');

  static const String name = 'AboutUs';
}

/// generated route for
/// [_i3.ContactUsView]
class ContactUs extends _i8.PageRouteInfo<void> {
  const ContactUs() : super(ContactUs.name, path: '/contactUs');

  static const String name = 'ContactUs';
}

/// generated route for
/// [_i4.PaymentView]
class Payment extends _i8.PageRouteInfo<void> {
  const Payment() : super(Payment.name, path: '/payment');

  static const String name = 'Payment';
}

/// generated route for
/// [_i5.HomeView]
class Home extends _i8.PageRouteInfo<void> {
  const Home() : super(Home.name, path: 'home');

  static const String name = 'Home';
}

/// generated route for
/// [_i6.BlogView]
class Blogs extends _i8.PageRouteInfo<void> {
  const Blogs() : super(Blogs.name, path: 'blogs');

  static const String name = 'Blogs';
}

/// generated route for
/// [_i7.CheckoutView]
class CheckOut extends _i8.PageRouteInfo<void> {
  const CheckOut() : super(CheckOut.name, path: 'checkOut');

  static const String name = 'CheckOut';
}
