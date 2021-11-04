import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  //const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme
          .of(context)
          .textTheme
          .bodyText2!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: Colors.grey,
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  TextButton(
                    child: const Text('Know more?'),
                    onPressed: (){
                      Navigator.of(context).restorablePush(_dialogBuilder);
                    },
                  ),
                  Container(
                    // Another fixed-height child.
                    color: Colors.grey,
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  TextButton(
                    child: const Text('Know more?'),
                    onPressed: (){
                      Navigator.of(context).restorablePush(_dialogBuilder);
                    },
                  ),
                  Container(
                    color: Colors.grey,
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  TextButton(
                    child: const Text('Know more?'),
                    onPressed: (){
                      Navigator.of(context).restorablePush(_dialogBuilder);
                    },
                  ),
                  Container(
                    color: Colors.grey,
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  TextButton(
                    child: const Text('Know more?'),
                    onPressed: (){
                      Navigator.of(context).restorablePush(_dialogBuilder);
                    },
                  ),
                  Container(
                    color: Colors.grey,
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  TextButton(
                    child: const Text('Know more?'),
                    onPressed: (){
                      Navigator.of(context).restorablePush(_dialogBuilder);
                    },
                  ),
                  Container(
                    color: Colors.grey,
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  static Route<Object?> _dialogBuilder(
      BuildContext context, Object? arguments) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) =>
          AlertDialog(
            title: Text('Alert sample of shop info'),
            actions: <Widget>[
              TextButton(
                  child:
                  Text('Close',style: TextStyle(color: Colors.deepOrange),),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
    );
  }
}