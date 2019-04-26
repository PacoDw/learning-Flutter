// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _gridStyle = 2;
//   Icon _iconGrid = Icon(Icons.view_stream);

//   List<Card> _buildGridCards(BuildContext context) {
//     List<Product> products = ProductsRepository.loadProducts(Category.all);

//     if (products == null || products.isEmpty) {
//       return const <Card>[];
//     }

//     final ThemeData theme = Theme.of(context);
//     final NumberFormat formatter = NumberFormat.simpleCurrency(
//         locale: Localizations.localeOf(context).toString());

//     return products.map((product) {
//       return Card(
//         clipBehavior: Clip.antiAlias,
//         elevation: 0.0,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             AspectRatio(
//               aspectRatio: 18 / 11,
//               child: Image.asset(
//                 product.assetName,
//                 package: product.assetPackage,
//                 fit: BoxFit.fitWidth,
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       product == null ? '' : product.name,
//                       style: theme.textTheme.button,
//                       softWrap: false,
//                       overflow: TextOverflow.ellipsis,
//                       maxLines: 1,
//                     ),
//                     SizedBox(height: 4.0),
//                     Text(
//                       product == null ? '' : formatter.format(product.price),
//                       style: theme.textTheme.caption,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     }).toList();
//   }

//   _onChangeGrid() {
//     if (_gridStyle == 1)
//       setState(() {
//         _gridStyle = 2;
//         _iconGrid = Icon(Icons.view_stream);
//       });
//     else
//       setState(() {
//         _gridStyle = 1;
//         _iconGrid = Icon(Icons.view_module);
//       });
//   }

//   // TODO: Add a variable for Category (104)
//   @override
//   Widget build(BuildContext context) {
//     // TODO: Return an AsymmetricView (104)
//     // TODO: Pass Category variable to AsymmetricView (104)
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("SHRINE"),
//           leading: IconButton(
//             icon: Icon(
//               Icons.menu,
//               semanticLabel: "menu",
//             ),
//             onPressed: () => print("Menu button!"),
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: _iconGrid,
//               onPressed: _onChangeGrid,
//             ),
//             IconButton(
//               icon: Icon(
//                 Icons.search,
//                 semanticLabel: 'search',
//               ),
//               onPressed: () => print('Search button'),
//             ),
//             IconButton(
//               icon: Icon(
//                 Icons.tune,
//                 semanticLabel: 'filter',
//               ),
//               onPressed: () {
//                 print(_gridStyle);
//               },
//             )
//           ],
//         ),
//         body: GridView.count(
//           crossAxisCount: _gridStyle,
//           padding: EdgeInsets.all(16.0),
//           childAspectRatio: 8.0 / 9.0,
//           children: _buildGridCards(context),
//         ));
//   }
// }
class HomePage extends StatelessWidget {
  // TODO: Add a variable for Category (104)
  final Category category;

  const HomePage({this.category: Category.all});

  @override
  Widget build(BuildContext context) {
    // TODO: Pass Category variable to AsymmetricView (104)
    return AsymmetricView(products: ProductsRepository.loadProducts(category));
  }
}