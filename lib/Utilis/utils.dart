import 'package:flutter/material.dart';


class Utils{
Size getScreenSize(){
  return  WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;

  //depericeted way to get screen size without passing context.
    //MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
}
}