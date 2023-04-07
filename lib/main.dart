import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  Widget _buildItemList(BuildContext context, int index) {
    return InkWell(
        onTap: () {
          print(index);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.15,
          child: CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ));
  }

  void funs(int int) {
    print("Hui: $int");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ScrollSnapList(
              itemBuilder: _buildItemList,
              itemCount: 10,
              dynamicItemSize: true,
              itemSize: 120,
              onItemFocus: funs,
            ),
          ),
        ),
      ),
    );
  }
}

_buildItemList(BuildContext context, int index) {}
