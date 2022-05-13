import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';

import 'navigation_item.dart';

class ItemDrawer extends StatelessWidget {
  final NavigationItem navigationItem;
  final NavDrawerState state;
  const ItemDrawer(
    this.navigationItem,
    this.state, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Card(
            color: Colors.grey[600],
            borderOnForeground: true,
            elevation: 0,
            margin: EdgeInsets.zero,
            child: Builder(
              builder: (BuildContext context) => Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
                child: Container(
                  decoration: navigationItem.item == state.selectedItem
                      ? BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        )
                      : const BoxDecoration(),
                  child: ListTile(
                    title: Text(
                      navigationItem.title,
                      style: TextStyle(
                        color: navigationItem.item == state.selectedItem
                            ? Colors.black
                            : Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    leading: navigationItem.title != 'Layette'
                        ? navigationItem.icons
                        : navigationItem.icon,
                    onTap: () => _handleItemClick(context, navigationItem.item),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleItemClick(
    BuildContext context,
    NavItem item,
  ) {
    BlocProvider.of<NavDrawerBloc>(context).add(NavigateTo(item));
  }
}
