import 'package:flutter/material.dart';
import 'package:news_app/modules/business/business_screen.dart';
import 'package:news_app/modules/science/science_screen.dart';
import 'package:news_app/modules/sports/sports_screen.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState>{

  AppCubit() : super(InitialState());
  static AppCubit getInstance(context) => BlocProvider.of(context);

  int currentNavIndex = 0;

  List<Widget> navListItem = [
    BusinessLayout(),
    ScienceLayout(),
    SportsLayout()
  ];
  void changeNavIndex(int index){
    currentNavIndex = index;
    emit(NewsBottomNavState());
  }
}