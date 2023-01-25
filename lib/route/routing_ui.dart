import 'package:flutter/material.dart';

import 'my_router.dart';

class Routing extends StatefulWidget {
  final Map userObject;
  final String initialLink;
  const Routing({Key? key, required this.userObject, required this.initialLink})
      : super(key: key);

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {
  final routerClass = MyRouter();

  @override
  void initState() {
    super.initState();
    asyncFunction();
  }

  Future<void> asyncFunction() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.remove('notification_data');
    // String notificationData = prefs.getString('notification_data');
    // debugPrint('Routing Notification $notificationData');
    // if(notificationData == null){
    //   routerClass.redirection(context: context, userObject: widget.userObject, initialLink: widget.initialLink);
    // }else{
    //   mainScreenController.onNotificationClick(notificationData, context);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Center(child: CircularProgressIndicator()),
              Text("Redirecting...!"),
            ],
          ),
        ),
      ),
    );
  }
}
