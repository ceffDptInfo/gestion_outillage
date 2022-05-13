import 'package:flutter/material.dart';

class AppBarReturn extends StatelessWidget {
  const AppBarReturn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
        ),
        title: Container(),
        elevation: 0.0,
        actions: [
          PopupMenuButton(
            onSelected: (value) {},
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: const [
                    Icon(Icons.logout_rounded),
                    Text("Logout"),
                  ],
                ),
                value: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
