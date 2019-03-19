import 'package:flutter/material.dart';

// 数据模型
class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
      title: '导航传参',
      home: ProductList(
          products:
              List.generate(20, (i) => Product('第 $i 个商品', '第 $i 个商品描述')))));
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nav params'),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            ProductDetail(product: products[index])));
              },
            );
          }),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.title}'),),
      body: Center(child: Text('${product.description}'),),
    );
  }
}
