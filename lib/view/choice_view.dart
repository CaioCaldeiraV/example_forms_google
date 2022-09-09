import 'package:example_forms_google/view/form_google_api_view.dart';
import 'package:example_forms_google/view/form_web_view.dart';
import 'package:flutter/material.dart';

class ChoiceView extends StatefulWidget {
  const ChoiceView({Key? key}) : super(key: key);

  @override
  _ChoiceViewState createState() => _ChoiceViewState();
}

class _ChoiceViewState extends State<ChoiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Form Test"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FormWebView(),
                  ),
                );
              },
              child: const Center(
                child: Text("Form in Web View"),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FormGoogleApiView(),
                  ),
                );
              },
              child: const Center(
                child: Text("Form with Google API"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
