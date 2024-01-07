import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Course"),
      ),
      body: Text("notification"),
    );
  }

  // buildBody() {
  //   return BlocProvider(
  //     create: (context) => SubjectBloc(),
  //     child: Container(),
  //   )

  // }
}
