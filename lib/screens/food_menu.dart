import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart' as menu_item;

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  final List items = comidas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 32, fontFamily: 'Caveat'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return menu_item.MenuItem(
              itemTitle: items[index]['name'],
              itemPrice: items[index]['price'],
              imageURI: items[index]['image'],
            );
          },

          childCount: items.length))
        ],
      ),
    );
  }
}
