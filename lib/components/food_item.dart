import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.imageURI,
      required this.itemTitle,
      required this.itemPrice});

  final String imageURI;
  final String itemTitle;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
          clipBehavior: Clip.hardEdge,
          color: Theme.of(context).colorScheme.surfaceVariant,
          elevation: 3,
          shadowColor: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemTitle,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text('R\$ ' + itemPrice),
                    ],
                  )),
              Image(
                height: 80,
                width: 80,
                image: AssetImage(imageURI),
                fit: BoxFit.cover,
              )
            ],
          )),
    );
  }
}
