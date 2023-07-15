import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';

class ProductsService extends ChangeNotifier {
  final String _baseUrl = 'flutter-test-products-default-rtdb.firebaseio.com';
  final List<Product> products = [];

  //todo:hacer el fetch de productos
}
