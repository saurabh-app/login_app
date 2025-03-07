import 'package:flutter/material.dart';

class DashboardViewModel extends ChangeNotifier {
  String _contactsCount = '120';
  String _tasksCount = '45';
  String _revenue = '\$12k';
  String _alertsCount = '8';

  String get contactsCount => _contactsCount;
  String get tasksCount => _tasksCount;
  String get revenue => _revenue;
  String get alertsCount => _alertsCount;

  void updateContactsCount(String newCount) {
    _contactsCount = newCount;
    notifyListeners();
  }

  void updateTasksCount(String newCount) {
    _tasksCount = newCount;
    notifyListeners();
  }

  void updateRevenue(String newRevenue) {
    _revenue = newRevenue;
    notifyListeners();
  }

  void updateAlertsCount(String newCount) {
    _alertsCount = newCount;
    notifyListeners();
  }
}
