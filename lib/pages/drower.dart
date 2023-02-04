import 'package:flutter/material.dart';
import 'package:future_heroes_tablet/widgets/LogoAuth.dart';

class DrowerWidget extends StatelessWidget {
  const DrowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: LogoAuth(),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الرئيسية'),
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text('مجلة المركز'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('تقييم المدرب'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('تقييم الخدمة بشكل كامل'),
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('ساعدنا لتقديم خدمة افضل'),
          ),
        ],
      ),
    );
  }
}
