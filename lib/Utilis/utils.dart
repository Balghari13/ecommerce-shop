import 'package:flutter/material.dart';


class Utils{
Size getScreenSize(BuildContext context){
  return  MediaQueryData.fromView(View.of(context)).size;

  //depericeted way to get screen size without passing context.
    //MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
}
}