// import 'package:flutter/material.dart';
////runApp(MyApp());
//   // int a,b;
//   // a=20;b=30;
//   // print(a+b);
class MyClass{
  String name="";
  int price=0;

  MyClass(){
    print("I am a Constructor");
  }
  void show(){
    print("Name is $name");
    print("Price is $price");
  }
}
class B extends MyClass{

}
main(){
B obj=new B();
obj.name="Vivo S1Pro";
obj.price=24000;
obj.show();
MyClass obj2=new MyClass();
obj2.name="Techno";
obj2.price=24000;
obj2.show();
}

// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Center(child: Text("Abdullah")),);
//   }
// }
