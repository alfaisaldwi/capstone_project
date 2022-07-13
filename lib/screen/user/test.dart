import 'dart:convert';

import 'package:capstone_project/screen/user/post.dart';
import 'package:capstone_project/screen/user/post.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  final String apiUrl =
      "https://virtserver.swaggerhub.com/Azifaazka/VaccineCaps/1.0.0/role";

  Future<List<dynamic>> fetchPost() async {
    var result = await http.get(Uri.parse(apiUrl));
    print(result.body);
    return json.decode(result.body)['data'];
  }

  late Future<List<Post>> futurePost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar GET HTTP'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchPost(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data[index]['name'] +
                          " " +
                          snapshot.data[index]['email']),
                      subtitle: Text(snapshot.data[index]['password']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
