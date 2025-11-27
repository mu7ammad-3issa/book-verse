import 'package:bookly_app/book_verse.dart';
import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/core/di/service_locator.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  setupServiceLocator();
  runApp(
    const BookVerse(),
  );
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
}
