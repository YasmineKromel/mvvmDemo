import 'package:flutter/material.dart';
import 'package:mvvm_demo/EligibilityModule/viewModel/EligiblityScreenProvider.dart';
import 'package:provider/provider.dart';

class EligibilityScreen extends StatelessWidget {
  const EligibilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController ageController = TextEditingController();

    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Consumer<EligibilityScreenProvider>(
              builder: (context,provider,child){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: provider.isEligible? Colors.orangeAccent : provider.isEligible ? Colors.green : Colors.redAccent,
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextField(
                      controller: ageController,
                      decoration: const InputDecoration(
                        hintText: "Give your age",
                      ),
                    ),
                    const SizedBox(height: 16,),
                    InkWell(
                      onTap: (){
                        final int age = int.parse(ageController.text);
                        provider.checkEligibility(age);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blue
                        ),
                        child: const Center(child:Text("Check",style: TextStyle(color: Colors.white),)),
                      ),
                    ),

                    const SizedBox(height: 16,),
                    const Text("you have not given any input "),
                  ],
                );
              }

            ),
          ),
        ),
      ),
    );
  }
}
