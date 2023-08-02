import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final hiveProvider = Provider.family((ref, db) => Hive.box(db.toString()));

final dioProvider = Provider((ref) => Dio());
