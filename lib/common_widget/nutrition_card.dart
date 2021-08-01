import 'package:flutter/material.dart';
import 'package:teknoponik/constant.dart';

class NutritionCard extends StatelessWidget {
  final String? nuritionName;
  final int? nuritionValue;
  final String? nutritionStatus;
  const NutritionCard(
      {@required this.nuritionName,
      @required this.nuritionValue,
      @required this.nutritionStatus});

  Color checkNutrition() {
    if (nutritionStatus != 'Normal') {
      return Colors.redAccent;
    }
    return kBlueTeknoponik;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: checkNutrition(),
      child: ListTile(
        leading: Text('$nuritionName: $nuritionValue'),
        trailing: Text('Status: $nutritionStatus'),
      ),
    );
  }
}
