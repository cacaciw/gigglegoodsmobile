import 'package:flutter/material.dart';
import 'package:gigglegoods/models/giggle_entry.dart';
import 'package:gigglegoods/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class GiggleEntryPage extends StatefulWidget {
  const GiggleEntryPage({super.key});

  @override
  State<GiggleEntryPage> createState() => _GiggleEntryPageState();
}

class _GiggleEntryPageState extends State<GiggleEntryPage> {
  Future<List<ProductEntry>> fetchMood(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://127.0.0.1:8000/json/');

    // Melakukan decode response menjadi bentuk json
    var data = response;

    // Melakukan konversi data json menjadi object MoodEntry
    List<ProductEntry> listMood = [];
    for (var d in data) {
      if (d != null) {
        listMood.add(ProductEntry.fromJson(d));
      }
    }
    return listMood;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data produk yang ditambahkan.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) {
                  final product = snapshot.data![index];
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the detail page and pass the selected product
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetailPage(item: product),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.fields.name,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text("Price: Rp${product.fields.price}"),
                          const SizedBox(height: 10),
                          Text("Description: ${product.fields.description}"),
                          const SizedBox(height: 10),
                          Text("Giggle Level: ${product.fields.giggleLevel}"),
                          const SizedBox(height: 10),
                          Text("${product.fields.time}"),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }
        },
      ),
    );
  }
}

class ItemDetailPage extends StatelessWidget {
  final ProductEntry item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.fields.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text("Price: Rp${item.fields.price}",
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("Description: ${item.fields.description}",
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            Text("Giggle Level: ${item.fields.giggleLevel}",
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            Text("Date Added: ${item.fields.time}",
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Product List'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
