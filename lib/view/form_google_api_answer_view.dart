import 'package:flutter/material.dart';

class FormGoogleApiAnswerView extends StatefulWidget {
  const FormGoogleApiAnswerView({Key? key}) : super(key: key);

  @override
  _FormGoogleApiAnswerViewState createState() =>
      _FormGoogleApiAnswerViewState();
}

class _FormGoogleApiAnswerViewState extends State<FormGoogleApiAnswerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Form Test"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
