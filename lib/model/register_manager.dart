import 'package:capstone_project/model/register_vaccine_model.dart';
import 'package:flutter/cupertino.dart';

class RegisterVaccineManager extends ChangeNotifier {
  final _registerVaccineModel = <RegisterVaccineModel>[];
  List<RegisterVaccineModel> get registerVaccineModel => List.unmodifiable(_registerVaccineModel);

  void deleteTask(int index) {
    _registerVaccineModel.removeAt(index);
    notifyListeners();
  }

  void addTask(RegisterVaccineModel task) {
    _registerVaccineModel.add(task);
    notifyListeners();
  }
}