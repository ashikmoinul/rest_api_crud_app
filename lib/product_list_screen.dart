import 'package:flutter/material.dart';
import 'package:rest_api_crud_app/add_product_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Product List'),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildProductItem(); //method extract
        },
        separatorBuilder: (_, __) {
          return const Divider();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddProductScreen(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
    );
  }

  Widget _buildProductItem() {
    return ListTile(
      leading: Image.network(
        'https://picsum.photos/250?image=9',
        width: 30,
        height: 60,
      ),
      title: const Text('Product List'),
      subtitle: const Wrap(
        spacing: 8,
        children: [
          Text('Unit Price: 100'),
          Text('Quantity: 100'),
          Text('Total Price: 10000'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever_outlined),
          ),
        ],
      ),
    );
  }
}
