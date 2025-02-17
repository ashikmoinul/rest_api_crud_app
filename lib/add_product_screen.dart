import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();

  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // Current State of Form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Add Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                    controller: _nameTEController,
                    keyboardType: TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      hintText: ('Name'),
                      labelText: ('Name'),
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Write your product name';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _unitPriceTEController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: ('Unit Price'),
                      labelText: ('Unit Price'),
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Write unit price';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _quantityTEController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: ('Quantity'),
                      labelText: ('Quantity'),
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Write quantity';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _totalPriceTEController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: ('Total Price'),
                      labelText: ('Total Price'),
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Write total price';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _imageTEController,
                    decoration: const InputDecoration(
                      hintText: ('Image'),
                      labelText: ('Image'),
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'add image';
                      }
                      return null;
                    }),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _addProduct();
                    }
                  },
                  child: const Text(
                    'Add',
                    // style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> _addProduct() async {
  //   const String addNewProductUrl =
  //       'http://35.73.30.144:2008/api/v1/CreateProduct';
  //
  //   Map<String, dynamic> inputData = {
  //     "ProductName": "ef",
  //     "ProductCode": 256,
  //     "Img": "dwq",
  //     "Qty": 45,
  //     "UnitPrice": 14,
  //     "TotalPrice": 888
  //   };
  //   // Post Request
  //   Uri uri = Uri.parse(addNewProductUrl);
  //   Response response = await post(uri,
  //       body: jsonEncode(inputData),
  //       headers: {'content-type': 'application/json'});
  //   print(response.statusCode);
  //   print(response.body);
  //   print(response.headers);
  // }

  Future<void> _addProduct() async {
    const String addNewProductUrl =
        'http://35.73.30.144:2008/api/v1/CreateProduct';

    Map<String, dynamic> inputData = {
      "ProductName": "ef",
      "ProductCode": 256,
      "Img": "dwq",
      "Qty": 45,
      "UnitPrice": 14,
      "TotalPrice": 888,
    };

    Uri uri = Uri.parse(addNewProductUrl);
    Response response = await post(uri,
        body: jsonEncode(inputData),
        headers: {'content-type': 'application/json'});
    print(response.statusCode);
    print(response.body);
    print(response.headers);
  }

  @override
  void dispose() async {
    _nameTEController.dispose();
    _unitPriceTEController.dispose();
    _quantityTEController.dispose();
    _totalPriceTEController.dispose();
    _imageTEController.dispose();
    super.dispose();
  }
}
