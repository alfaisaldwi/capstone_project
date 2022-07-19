import 'package:capstone_project/model/hospital_model.dart';
import 'package:capstone_project/model/register_vaccine_model.dart';
import 'package:capstone_project/screen/register_vaccine/list_vaccine_view_model.dart';
import 'package:flutter/cupertino.dart';

class HospitalManager extends ChangeNotifier {
  final _hospitalModel = <HospitalModel>[];
  List<HospitalModel> get hospitalModels => List.unmodifiable(_hospitalModel);

  void deleteTask(int index) {
    _hospitalModel.removeAt(index);
    notifyListeners();
  }

  void addTask(HospitalModel task) {
    _hospitalModel.add(task);
    notifyListeners();
  }
}