import 'package:flutter/material.dart';

class CheckCtfScreen extends StatefulWidget {
  const CheckCtfScreen({ Key? key }) : super(key: key);

  @override
  State<CheckCtfScreen> createState() => _CheckCtfScreenState();
}

class _CheckCtfScreenState extends State<CheckCtfScreen> {

  final _certiController = TextEditingController();

  Widget buildNIKField(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Cek Sertifikat'),
        const SizedBox(
          height:8,
        ),
        TextField(
          controller: _certiController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText : '',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ]
    );
  }

    Widget buildButton(){
    return Positioned(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 136,
        width: MediaQuery.of(context).size.width - 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Lanjut'),
              onPressed: () {},
            ),
            // Text(
            //   title,
            //   style: kTitleTextstyle.copyWith(
            //     fontSize: 16,
            //   ),
            // ),
            // Expanded(
            //   child: Text(
            //     text,
            //     maxLines: 4,
            //     overflow: TextOverflow.ellipsis,
            //     style: const TextStyle(
            //       fontSize: 12,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
    // ElevatedButton(
    //   child: const Text('Lanjut'),
    //   onPressed: () {},
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Cek Sertifikat'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            buildNIKField(),
            buildButton(),
          ],
        ),
      ),
    );
  }
}