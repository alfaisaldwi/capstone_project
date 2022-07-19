// import 'package:capstone_project/model/hospital_model.dart';
// import 'package:capstone_project/model/task_model.dart';
// import 'package:flutter/material.dart';
// import 'package:uuid/uuid.dart';

// class ListVaccineTask extends StatefulWidget {
  
//   const ListVaccineTask({Key? key}) : super(key: key);

//   @override
//   State<ListVaccineTask> createState() => _ListVaccineTaskState();
// }

// class _ListVaccineTaskState extends State<ListVaccineTask> {
//   final _taskNameController = TextEditingController();
//   String _taskName = '';

//   @override
//   void initState() {
//     super.initState();
//     _taskNameController.addListener(() {
//       setState(() {
//         _taskName = _taskNameController.text;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _taskNameController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Create Task')),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: ListView(children: [
//           buildNameField(),
//           buildButton(),
//         ]),
//       ),
//     );
//   }

//   Widget buildNameField() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text('Name'),
//         SizedBox(
//           height: 20,
//         ),
//         TextField(
//             controller: _taskNameController,
//             cursorColor: Colors.black,
//             decoration: const InputDecoration(
//                 hintText: 'Input name',
//                 enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10),
//                     )),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.black),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                 )))
//       ],
//     );
//   }

//   Widget buildButton() {
//     return ElevatedButton(
//       child: Text('Submit'),
//       onPressed: () {
//         final taskItem = TaskModel(
//           id: const Uuid().v1(),
//           taskName: _taskNameController.text,
//           // age: _taskAgeController.text
//         );
//         widget.onCreate(taskItem);
//       },
//     );
//   }
// }
