import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit  mCubit = AppCubit.getInstance(context);
          return  Scaffold(
            appBar: AppBar(
              title: Text(
                'Business',
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Busisness'),
                BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
                BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
              ],
              onTap: (index) {
                mCubit.changeNavIndex(index);
              },
              currentIndex: mCubit.currentNavIndex,
            ),
            body: mCubit.navListItem[mCubit.currentNavIndex],
          );
        },
      ),
    );
  }
}
