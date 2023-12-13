import 'package:flutter/material.dart';
import 'package:poddle_nfc/poddle_nfc.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  void readNfc()async{
    final nfcValue= await PoddleNfc().readNfc();
    debugPrint(nfcValue);
  }

  void writeNfc() async{
   final staus = await PoddleNfc().writeNfc(path: 'https://www.youtube.com/watch?v=t7lUSiddFd4', lable:'');
   debugPrint(staus.toString());
  }
}
