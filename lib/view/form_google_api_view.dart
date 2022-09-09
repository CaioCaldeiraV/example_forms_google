import 'package:example_forms_google/model/form_model.dart';
import 'package:example_forms_google/repository/form_google_repository.dart';
import 'package:flutter/material.dart';

class FormGoogleApiView extends StatefulWidget {
  const FormGoogleApiView({Key? key}) : super(key: key);

  @override
  _FormGoogleApiViewState createState() => _FormGoogleApiViewState();
}

class _FormGoogleApiViewState extends State<FormGoogleApiView> {
  final _formKey = GlobalKey<FormState>();
  int? selectedSinger;
  List<FormModel> groupValueSinger = [
    FormModel("Michael Jackson", "American singer, songwriter and dancer."),
    FormModel("Chris Martin", "American singer, songwriter and dancer."),
    FormModel("Michael Jackson", "American singer, songwriter and dancer."),
  ];
  int? selectedPlayer;
  List<FormModel> groupValuePlayer = [
    FormModel("Cristiano Ronaldo",
        "Portuguese professional footballer who plays as a forward for Premier League club Manchester United and captains the Portugal national team."),
    FormModel("Lionel Messi",
        "Argentine professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and captains the Argentina national team."),
    FormModel("Neymar",
        "Brazilian professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and the Brazil national team."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Form Test"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * .025,
            horizontal: MediaQuery.of(context).size.width * .025,
          ),
          children: [
            const Center(
              child: Text(
                "Who is the best singer?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            for (int i = 0; i < groupValueSinger.length; i++)
              RadioListTile<int>(
                value: i,
                groupValue: selectedSinger,
                onChanged: (_) => setState(() {
                  selectedSinger = i;
                }),
                title: Text(groupValueSinger[i].option),
                subtitle: Text(groupValueSinger[i].description),
              ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            const Center(
              child: Text(
                "Who is the best football player?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            for (int i = 0; i < groupValuePlayer.length; i++)
              RadioListTile<int>(
                value: i,
                groupValue: selectedPlayer,
                onChanged: (_) => setState(() {
                  selectedPlayer = i;
                }),
                title: Text(groupValuePlayer[i].option),
                subtitle: Text(groupValuePlayer[i].description),
              ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .05,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05,
              ),
              child: ElevatedButton(
                onPressed: () {
                  if (selectedSinger != null && selectedPlayer != null) {
                    FormGoogleRepository().sendAnswersToGoogleForm(
                        groupValueSinger[selectedSinger!].option,
                        groupValuePlayer[selectedPlayer!].option);
                  }
                },
                child: const Center(
                  child: Text("Send reply"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
