import 'package:flutter/material.dart';

class GridEmplacement extends StatelessWidget {
  const GridEmplacement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        // color: Colors.black38,
        margin: const EdgeInsets.only(left: 70),
        width: MediaQuery.of(context).size.height / 2,
        height: MediaQuery.of(context).size.height * 0.5,
        child: GridView.builder(
            itemCount: 35,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: (1 / 1.5),
              crossAxisCount: 7,
            ),
            itemBuilder: (BuildContext context, int index) {
              if (index == 1 ||
                  index == 2 ||
                  index == 3 ||
                  index == 4 ||
                  index == 5 ||
                  index == 6) {
                return Center(
                  // child: new CircleAvatar(
                  //   backgroundColor: Colors.white,
                  child: Text(
                    '$index',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                );
                // abcd
              } else if (index == 7 ||
                  index == 14 ||
                  index == 21 ||
                  index == 28) {
                return Container(
                  color: Colors.transparent,
                  child: Center(
                    // child: new CircleAvatar(
                    //   backgroundColor: Colors.white,
                    child: Text(
                      index == 7
                          ? "d"
                          : index == 14
                              ? "c"
                              : index == 21
                                  ? "b"
                                  : index == 28
                                      ? "a"
                                      : "",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      // ),
                    ),
                  ),
                );
              }
              if (index == 26 || index == 27 || index == 33 || index == 34) {
                return Container(
                  color: Colors.black,
                );
              } else {
                if (index == 0) {
                  return Container();
                } else {
                  return Container(
                    color: Colors.grey[600],
                  );
                }
              }
            }),
      );
}
