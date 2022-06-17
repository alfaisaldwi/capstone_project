// ignore_for_file: unnecessary_const

import 'package:capstone_project/screen/register_vaccine/register_vaccine_form_view.dart';
import 'package:capstone_project/screen/register_vaccine/register_vaccine_list.dart';
import 'package:flutter/material.dart';
import 'package:capstone_project/model/register_manager.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

class RegisterVaccineView extends StatefulWidget {
  RegisterVaccineView({Key? key}) : super(key: key);

  @override
  State<RegisterVaccineView> createState() => _RegisterVaccineViewState();
}

class _RegisterVaccineViewState extends State<RegisterVaccineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pendaftaran Vaksin'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      RegisterVaccineFormView(),
                                ));
                          },
                          child: const Icon(
                            Icons.add_circle_outline_rounded,
                            size: 40,
                          )),
                      Text("Tambah Anggota", style: TextStyle(fontSize: 20)),
                      Text('')
                    ],
                  )),
                ),
              ),
            )
          ],
        ));
  }

  Widget buildTaskScreen() {
    return Consumer<RegisterVaccineManager>(builder: (context, manager, child) {
      if (manager.registerVaccineModel.isNotEmpty) {
        return RegisterVaccineList(
          manager: manager,
        );
      } else {
        return const EmptyScreen();
      }
    });
  }
}

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
