import 'package:assessment/common/utils/assets_path.dart';
import 'package:assessment/common/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchProducts extends StatefulWidget {
  const SearchProducts({super.key});

  @override
  State<SearchProducts> createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  final List<Map<String, String>> products = [
    {
      'title': 'Michel Tires',
      'description': 'Lorem ipsum dolor sit...',
      'stock': 'Available',
      'image': AssetsPath.tires,
    },
    {
      'title': 'Michel Tires',
      'description': 'Lorem ipsum dolor sit...',
      'stock': 'Out of Stock',
      'image': AssetsPath.tires,
    },
    {
      'title': 'Michel Tires',
      'description': 'Lorem ipsum dolor sit...',
      'stock': 'Available',
      'image': AssetsPath.tires,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Search Products'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
        child: Column(
          children: [
            Center(child: Image.asset(AssetsPath.appLogo, height: 22)),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: 'Search Products'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Column(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          product['image']!,
                          width: 64,
                          height: 64,
                        ),
                        title: Text(
                          product['title']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product['description']!),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  'Stock: ',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  product['stock']!,
                                  style: TextStyle(
                                    color: product['stock'] == 'Available'
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios,size: 16,),
                          onPressed: () {},
                        ),
                      ),
                      Divider(
                        color: Colors.grey[100],
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ],
                  );
                },
              ),
            )
            /*const SearchProducts(),
            const SearchProducts(),
            const SearchProducts(),*/
          ],
        ),
      ),
    );
  }
}
