import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_app/base/provider/product_provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Provider.of<ProductProvider>(context, listen: false).getAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Provider Excersie')),
        backgroundColor: Colors.amber,
      ),
      body: Consumer<ProductProvider>(builder: (context, value, child) {
        if (value.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        final products = value.products;
        return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(product.id.toString()),
                ),
                title: Text(product.title),
              );
            });
      }),
    );
  }
}
