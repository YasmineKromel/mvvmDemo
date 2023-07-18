
import 'package:flutter/material.dart';
class EligibilityScreenProvider extends ChangeNotifier
{
  late String _eligibilityMesssage;
   bool _isEligibile = false ;

  void checkEligibility(int age)
  {
    if (age>=18)
     EligibleForLicense();
    else
     NotEligibleForLicense();
  }

  void EligibleForLicense() {
    _eligibilityMesssage = "You are eligible to apply for Driving License";
    _isEligibile = true;

    notifyListeners();
  }

  void NotEligibleForLicense() {
    _eligibilityMesssage = "You are not eligible to apply for Driving License";
    _isEligibile = false;

    notifyListeners();
  }

  //Getter for Eligiblity message
  String get eligiblityMessage => _eligibilityMesssage;

  //Getter for Eligiblity flag
  bool get isEligible => _isEligibile;


}