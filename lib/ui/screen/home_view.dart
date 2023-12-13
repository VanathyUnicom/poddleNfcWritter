import 'package:flutter/material.dart';
import 'package:poddle_nfc_writer/ui/screen/home_veiw_model.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) => Scaffold(
          body: Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(40.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => viewModel.readNfc(),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: const Text("Read",style: TextStyle(fontSize: 20.0)),
                      ),
                    ),
                    InkWell(
                      onTap: () => viewModel.writeNfc(),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: const Text("Write",style: TextStyle(fontSize: 20.0)),
                      ),
                    )
                  ],
                ),
              )),
        ),
      );
}
