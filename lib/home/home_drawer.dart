import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  static  const int categories = 1;
  static  const int settings = 2;

  Function OnDrawerItemClick;
  HomeDrawer({required this.OnDrawerItemClick});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.1),
          color: Theme.of(context).primaryColor,
          child: Text('News App',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center),
        ),
        SizedBox(height: 15,),
        InkWell( onTap: (){
          OnDrawerItemClick(HomeDrawer.categories);

        },
          child: Row(
            children: [
              Icon(Icons.list),
              SizedBox(width: 6,),
              Text('Category' , style: Theme.of(context).textTheme.titleMedium,)
            ],
          ),
        ),
        SizedBox(height: 15,),
        InkWell( onTap: (){
          OnDrawerItemClick(HomeDrawer.settings);
        },
          child: Row(
            children: [
              Icon(Icons.settings),
              SizedBox(width: 6,),
              Text('Settings' , style: Theme.of(context).textTheme.titleMedium,)
            ],
          ),
        )
      ],
    );
  }
}