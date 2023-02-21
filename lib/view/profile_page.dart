import 'package:flutter/material.dart';
import 'package:fpp/utils/utils.dart';

class ProfilePage extends StatefulWidget {
  final String name;
  const ProfilePage({Key? key, required this.name}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Utils.setLog("routeExtra", widget.name);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.orange,
          child: Column(
            children: [
              const Text("Profile",style: TextStyle(fontSize: 20),),
              ElevatedButton(onPressed: (){
                setState(() {
                  count++;
                });
              }, child: Text(count.toString()))
            ],
          ),
        ),
      ),
    );
  }
}
