import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController {
  var currentPage = 0;

  void setPage(int index) {
    currentPage = index;
  }

  void removerBoletos() async {
    final instance = await SharedPreferences.getInstance();
    instance.remove("boletos");
  }

  Future<void> LimparBoletos(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Remover boletos'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Deseja remover todos os boletos?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                removerBoletos();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
