import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multivendor_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:multivendor_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:multivendor_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:multivendor_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:multivendor_admin/views/screens/side_bar_screens/upload_banner.dart';
import 'package:multivendor_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:multivendor_admin/views/screens/side_bar_screens/withdrawal_scree.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashBoardScreen();
  screenSelector(item) {
    switch (item.route) {
      case DashBoardScreen.routeName:
        return setState(() {
          _selectedItem = DashBoardScreen();
        });
        break;
      case VendorScreen.routeName:
        return setState(() {
          _selectedItem = VendorScreen();
        });
        break;
      case WithdrawalScreen.routeName:
        return setState(() {
          _selectedItem = WithdrawalScreen();
        });
        break;
      case OrdersScreen.routeName:
        return setState(() {
          _selectedItem = OrdersScreen();
        });
        break;
      case CategoriesScreen.routeName:
        return setState(() {
          _selectedItem = CategoriesScreen();
        });
        break;
      case ProductScreen.routeName:
        return setState(() {
          _selectedItem = ProductScreen();
        });
        break;
      case UploadBannerScreen.routeName:
        return setState(() {
          _selectedItem = UploadBannerScreen();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      sideBar: SideBar(
        items: [
          AdminMenuItem(
              title: 'Dashboard',
              icon: Icons.dashboard,
              route: DashBoardScreen.routeName),
          AdminMenuItem(
              title: 'Vendors',
              icon: CupertinoIcons.person_3,
              route: VendorScreen.routeName),
          AdminMenuItem(
              title: 'Withdrawal',
              icon: CupertinoIcons.money_dollar,
              route: WithdrawalScreen.routeName),
          AdminMenuItem(
              title: 'Orders',
              icon: CupertinoIcons.shopping_cart,
              route: OrdersScreen.routeName),
          AdminMenuItem(
              title: 'Categories',
              icon: Icons.category,
              route: CategoriesScreen.routeName),
          AdminMenuItem(
              title: 'Product',
              icon: Icons.shop,
              route: ProductScreen.routeName),
          AdminMenuItem(
              title: 'Upload Banners',
              icon: CupertinoIcons.add,
              route: UploadBannerScreen.routeName),
        ],
        selectedRoute: '',
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Store Panel',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: _selectedItem,
    );
  }
}
