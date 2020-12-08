import 'package:flutter/material.dart';
import './products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;

  ProductsManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _products.add('Second');
            });
          },
          child: Text('Add Product'),
        ),
      ),
      Products(this._products)
    ]);
  }
}
