import "package:flutter/material.dart";

class Show extends StatefulWidget {
  const Show({super.key});

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> with AutomaticKeepAliveClientMixin {
  num n = 0;

  @override
  bool get wantKeepAlive => true;

  // @override
  // void initState() {
  //   super.initState();
  //   print('recommend initState');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$n"),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    this.n++;
                  });
                }),
                child: Text("Click Me!"))
          ],
        ),
      ),
    );
  }
}
