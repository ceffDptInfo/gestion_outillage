import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gestion_outillage/application/auth/auth_bloc.dart';
import 'package:gestion_outillage/presentation/categories/widgets/search_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:gestion_outillage/presentation/routes/router.gr.dart';

// Widget appbar(context) {
//   return SafeArea(
//     child: AppBar(
//       // automaticallyImplyLeading: false,
//       centerTitle: true,
//       // foregroundColor: Colors.transparent,
//       backgroundColor: Colors.transparent,
//       leading: Container(
//           // margin: EdgeInsets.all(8.0),
//           // decoration: BoxDecoration(
//           //   color: Colors.black26,
//           //   borderRadius: BorderRadius.all(
//           //     Radius.circular(5),
//           //   ),
//           // ),
//           // child: Center(
//           //   child: IconButton(
//           //     onPressed: () => Navigator.of(context).pop(),
//           //     icon: Icon(
//           //       Icons.arrow_back_ios_new_outlined,
//           //       color: Colors.black,
//           //     ),
//           //   ),
//           // ),
//           ),
//       title: const Text('CP-16LYS / BB-76'),
//       elevation: 0.0,
//       actions: [
//         PopupMenuButton(
//           onSelected: (value) {},
//           itemBuilder: (context) => [
//             //            PopupMenuItem(
//             //   child: Text("Quitter"),
//             //   value: 1,
//             // ),
//             PopupMenuItem(
//               child: Row(
//                 children: [
//                   IconButton(
//                       icon: const Icon(Icons.logout_rounded),
//                       onPressed: () {
//                         // context
//                         //     .read<AuthBloc>()
//                         //     .add(const AuthEvent.signedOut());
//                         context.router.replace(const SignInRoute());
//                       }),
//                   const Text("Changer de compte"),
//                 ],
//               ),
//               value: 2,
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }

Widget appBarReturn(context) {
  return SafeArea(
    child: AppBar(
      // automaticallyImplyLeading: false,
      centerTitle: true,
      // foregroundColor: Colors.transparent,
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
            //            PopupMenuItem(
            //   child: Text("Quitter"),
            //   value: 1,
            // ),
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

// Widget appBarWithSearch(BuildContext context, String title) => AppBar(
//       // automaticallyImplyLeading: false,
//       centerTitle: true,
//       // foregroundColor: Colors.transparent,
//       backgroundColor: Colors.transparent,
//       // leading: Container(
//       //   margin: EdgeInsets.all(8.0),
//       //   child: Center(
//       //     child: IconButton(
//       //       onPressed: () => Navigator.of(context).pop(),
//       //       icon: Icon(
//       //         Icons.arrow_back_ios_new_outlined,
//       //         color: Colors.black,
//       //       ),
//       //     ),
//       //   ),
//       // ),
//       leading: Container(
//           // child: Text(title),
//           ),
//       // title: Text(title),
//       elevation: 0.0,
//       actions: [
//         // BlocListener<NavDrawerBloc, NavDrawerState>(
//         //   listener: (BuildContext context, state){
//         //     state.
//         //   }
//         // ),
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 8.0, bottom: 8.0, right: 0, left: 32),
//               child: SizedBox(
//                 // margin: EdgeInsets.only(
//                 //     right: MediaQuery.of(context).size.width * 0.02),
//                 // color: Colors.amber,
//                 width: MediaQuery.of(context).size.width * 0.18,
//                 child: buildSearch(),
//               ),
//             ),
//             PopupMenuButton(
//               onSelected: (value) {},
//               itemBuilder: (context) => [
//                 //            PopupMenuItem(
//                 //   child: Text("Quitter"),
//                 //   value: 1,
//                 // ),
//                 PopupMenuItem(
//                   child: Row(
//                     children: const [
//                       Icon(Icons.logout_rounded),
//                       Text("Se déconnecter"),
//                     ],
//                   ),
//                   value: 2,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
