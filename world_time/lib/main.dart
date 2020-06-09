import 'package:flutter/material.dart';
import 'package:worldtime/pages/choose_locatuion.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';

void main()=>runApp(MaterialApp(
  initialRoute: '/',
  routes:{
    '/':(context)=> Loading(),
    '/home': (context)=> Home(),
    '/location': (context) =>ChooseLocation(),
  },
));