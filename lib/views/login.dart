import 'package:flutter/material.dart';
import 'package:vizualize/utils/ui.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  List<Map<String, dynamic>> providers = [
    {
      "name": "Google",
      "icon": "assets/images/google.png",
    },
    {
      "name": "Facebook",
      "icon": "assets/images/facebook.png",
    },
    {
      "name": "Github",
      "icon": "assets/images/github.png",
    },
    {
      "name": "Microsoft",
      "icon": "assets/images/microsoft.png",
    },
    {
      "name": "Apple",
      "icon": "assets/images/apple.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: calculateWidth(context, 4), vertical: calculateHeight(context, 6)),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login with',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: providers
                      .map((e) => Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8.0),
                                child: Container(
                                  margin: const EdgeInsets.all(6.0),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(e['icon']), fit: BoxFit.contain), borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                              Text(
                                e['name'],
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ));
  }
}
