import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:offline_first_app/modules/home/models/cabang_bca.dart';
import 'package:sqflite/sqflite.dart';

import '../../../helpers/db_helper.dart';

class LocalBCARespository {
  var databaseFuture = DatabaseHelper.db.database;
  static const BCA_TABLE_NAME = 'cabang_bca';

  Future<List<CabangBca>> getAllCabangBCA() async {
    late final List<CabangBca> cabangBCAList;
    final Database database = await databaseFuture;
    final cabangBCAMap = await database.query(BCA_TABLE_NAME);
    cabangBCAList =
        cabangBCAMap.map((cabangBca) => CabangBca.fromJson(cabangBca)).toList();
    return cabangBCAList;
  }

  Future<void> updateLocalCabangBCADatatable() async {

    List<CabangBca>? cabangBCAList;
    final String response = await rootBundle.loadString('assets/json/cabang-bca.json');
    List dataList = await json.decode(response);

    cabangBCAList = dataList.map<CabangBca>((d) => CabangBca.fromJson(d)).toList();

    final Database database = await databaseFuture;
    Batch batch = database.batch();
    cabangBCAList.forEach((cabangBCA) async {
      batch.insert(
        BCA_TABLE_NAME,
        cabangBCA.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });
    batch.commit();
  }
}