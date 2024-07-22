import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_ecommerce/components/shoe_tile.dart';
import 'package:sneaker_ecommerce/models/cart.dart';
import 'package:sneaker_ecommerce/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Consumer<Cart>(
            builder: (context, cart, child) => Column(
              children: [
                // Search tab
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Search"), Icon(Icons.search)],
                  ),
                ),
                const Text(
                  "Everyone flies...some fly longer than others",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                // Hot picks section
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot Picks🔥",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cart.shoes.length,
                    itemBuilder: (context, index) {
                      Shoe shoe = cart.shoes[index];
                      return ShoeTile(
                        shoe: shoe,
                        addToCart: () {
                          cart.addItemToCart(shoe);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Item added to cart"),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
