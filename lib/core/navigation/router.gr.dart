// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../main_view.dart' as _i1;
import '../../models/product_model.dart' as _i13;
import '../../views/blog/blog_view.dart' as _i9;
import '../../views/checkout/checkout_view.dart' as _i10;
import '../../views/home/home_view.dart' as _i7;
import '../../views/menu/about_us/about_us_view.dart' as _i2;
import '../../views/menu/contact_us/contact_us_view.dart' as _i3;
import '../../views/menu/my_adress/my_adress_view.dart' as _i6;
import '../../views/menu/payment/payment_view.dart' as _i4;
import '../../views/products/products_view.dart' as _i8;
import '../../views/products/subviews/products_detail_view.dart' as _i5;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    Main.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainView());
    },
    AboutUs.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AboutUsView());
    },
    ContactUs.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ContactUsView());
    },
    Payment.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PaymentView());
    },
    ProductDetail.name: (routeData) {
      final args = routeData.argsAs<ProductDetailArgs>(
          orElse: () => const ProductDetailArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ProductsDetailView(key: args.key, product: args.product));
    },
    MyAdress.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MyAdressView());
    },
    Home.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomeView());
    },
    Products.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProductsView());
    },
    Blogs.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.BlogView());
    },
    CheckOut.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CheckoutView());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig('/#redirect',
            path: '/', redirectTo: '/main', fullMatch: true),
        _i11.RouteConfig(Main.name, path: '/main', children: [
          _i11.RouteConfig('#redirect',
              path: '', parent: Main.name, redirectTo: 'home', fullMatch: true),
          _i11.RouteConfig(Home.name, path: 'home', parent: Main.name),
          _i11.RouteConfig(Products.name, path: 'products', parent: Main.name),
          _i11.RouteConfig(Blogs.name, path: 'blogs', parent: Main.name),
          _i11.RouteConfig(CheckOut.name, path: 'checkOut', parent: Main.name)
        ]),
        _i11.RouteConfig(AboutUs.name, path: '/aboutUs'),
        _i11.RouteConfig(ContactUs.name, path: '/contactUs'),
        _i11.RouteConfig(Payment.name, path: '/payment'),
        _i11.RouteConfig(ProductDetail.name, path: '/productDetail'),
        _i11.RouteConfig(MyAdress.name, path: '/myAdress')
      ];
}

/// generated route for
/// [_i1.MainView]
class Main extends _i11.PageRouteInfo<void> {
  const Main({List<_i11.PageRouteInfo>? children})
      : super(Main.name, path: '/main', initialChildren: children);

  static const String name = 'Main';
}

/// generated route for
/// [_i2.AboutUsView]
class AboutUs extends _i11.PageRouteInfo<void> {
  const AboutUs() : super(AboutUs.name, path: '/aboutUs');

  static const String name = 'AboutUs';
}

/// generated route for
/// [_i3.ContactUsView]
class ContactUs extends _i11.PageRouteInfo<void> {
  const ContactUs() : super(ContactUs.name, path: '/contactUs');

  static const String name = 'ContactUs';
}

/// generated route for
/// [_i4.PaymentView]
class Payment extends _i11.PageRouteInfo<void> {
  const Payment() : super(Payment.name, path: '/payment');

  static const String name = 'Payment';
}

/// generated route for
/// [_i5.ProductsDetailView]
class ProductDetail extends _i11.PageRouteInfo<ProductDetailArgs> {
  ProductDetail({_i12.Key? key, _i13.ProductModel? product})
      : super(ProductDetail.name,
            path: '/productDetail',
            args: ProductDetailArgs(key: key, product: product));

  static const String name = 'ProductDetail';
}

class ProductDetailArgs {
  const ProductDetailArgs({this.key, this.product});

  final _i12.Key? key;

  final _i13.ProductModel? product;

  @override
  String toString() {
    return 'ProductDetailArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i6.MyAdressView]
class MyAdress extends _i11.PageRouteInfo<void> {
  const MyAdress() : super(MyAdress.name, path: '/myAdress');

  static const String name = 'MyAdress';
}

/// generated route for
/// [_i7.HomeView]
class Home extends _i11.PageRouteInfo<void> {
  const Home() : super(Home.name, path: 'home');

  static const String name = 'Home';
}

/// generated route for
/// [_i8.ProductsView]
class Products extends _i11.PageRouteInfo<void> {
  const Products() : super(Products.name, path: 'products');

  static const String name = 'Products';
}

/// generated route for
/// [_i9.BlogView]
class Blogs extends _i11.PageRouteInfo<void> {
  const Blogs() : super(Blogs.name, path: 'blogs');

  static const String name = 'Blogs';
}

/// generated route for
/// [_i10.CheckoutView]
class CheckOut extends _i11.PageRouteInfo<void> {
  const CheckOut() : super(CheckOut.name, path: 'checkOut');

  static const String name = 'CheckOut';
}
