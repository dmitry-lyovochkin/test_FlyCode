import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/marvel_remote_data_source.dart';
import 'package:flutter_application_1/models/marvel_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<MarvelModel>> marvelModel;

  @override
  void initState() {
    super.initState();
    marvelModel = getMarvel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hey Marvel!'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<MarvelModel>>(
        future: marvelModel,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return ListView.builder(
              itemExtent: 90,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: 4),
                    title: Text(
                      snapshot.data?[index].name ?? '',
                      style: const TextStyle(fontSize: 20),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        snapshot.data?[index].imageurl ?? '',
                      ),
                    ),
                  ),
                );
              }
            );
          } else if (snapshot.hasError) {
            return const Text('Error');
          }
        return const Center(child: CircularProgressIndicator());
        },
      )
    );
  }
}