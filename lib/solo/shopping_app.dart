import 'package:flutter/material.dart';

class Product{
  //常量构造函数
  const Product({this.name});
  final String name;
}

//定义一个函数类型
typedef void CartChangedCallback(Product product, bool inCart);

//无状态widget：购买列表的条目
class ShoppingListItem extends StatelessWidget {

  ShoppingListItem({Product product, this.inCart, this.onCartChanged}) : product = product, super(key: ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(
          product.name[0]
        ),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
      onTap: () {
        //改变inCart状态
        onCartChanged(product, !inCart);
      },
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) {
      return null;
    }

    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  State<StatefulWidget> createState() {
    return _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping list'
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
            return ShoppingListItem(
              product: product,
              inCart: _shoppingCart.contains(product),
              onCartChanged: _handleCartChanged,
            );
        }).toList(),
      ),
    );
  }
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShoppingList(
      products: <Product> [
        Product(name: 'Book'),
        Product(name: 'Phone'),
        Product(name: 'Macbook'),
        Product(name: 'Apple'),
        Product(name: 'Egg'),
      ],
    );
  }

}
