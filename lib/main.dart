import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PopUpDialog(),
    );
  }
}
class PopUpDialog extends StatefulWidget {
  const PopUpDialog({Key? key}) : super(key: key);

  @override
  State<PopUpDialog> createState() => _PopUpDialogState();
}

class _PopUpDialogState extends State<PopUpDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Open PopUp Dialog'),
          onPressed: (){
            showDialog(context: context,
                builder: (context) =>AlertDialog(
                  title: Text('My Titel') ,
                  content:Text('My Titel''My Titel''My Titel''My Titel''My Titel') ,
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('CANCLE')),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Ok'))
                  ],
                ));
          },
        ),
      ),
    );
  }
}
