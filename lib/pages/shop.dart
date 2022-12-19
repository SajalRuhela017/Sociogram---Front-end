import 'package:flutter/material.dart';
import '../util/shop_grid.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
              padding: EdgeInsets.all(4),
              color: Colors.grey[300],
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  Container(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}