// import 'dart:io';

// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseHelper {
//   DatabaseHelper._privateConstructor();
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
//   static Database? _database;
//   Future<Database> get database async => _database ??= await _initDatabase();

//   Future<Database> _initDatabase() async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, 'address.db');
//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//   }

//   Future _onCreate(Database db, int version) async {
//     await db.execute('''
//       CREATE TABLE provinces(
//         province_id TEXT PRIMARY KEY,
//         province_name TEXT,
//         province_type TEXT
//       )
//       ''');

//     await db.execute('''
//       CREATE TABLE districts(
//         district_id TEXT PRIMARY KEY,
//         district_name TEXT
//       )
//     ''');

//     await db.execute('''
//       CREATE TABLE wards(
//         ward_id TEXT PRIMARY KEY,
//         ward_name TEXT
//       )
//     ''');

//     await db.execute('''
//       CREATE TABLE jobCategories(
//         id TEXT PRIMARY KEY,
//         name TEXT
//       )
//     ''');
//   }

//   Future<List<ProvinceModel>> getProvinces() async {
//     Database db = await instance.database;
//     var provinces = await db.query('provinces', orderBy: 'province_name');
//     List<ProvinceModel> provinceList = provinces.isNotEmpty
//         ? provinces
//             .map((c) => ProvinceModel(
//                   id: c['province_id'] as String? ?? '',
//                   name: c['province_name'] as String? ?? '',
//                   type: c['province_type'] as String? ?? '',
//                 ))
//             .toList()
//         : [];
//     return provinceList;
//   }

//   // Future<List<DistrictModel>> getDistrict(String idProvinces) async {
//   //   Database db = await instance.database;
//   //   var districts = await db.query('districts',
//   //       where: 'parent_code = ?', whereArgs: [idProvinces], orderBy: 'slug');
//   //   List<DistrictModel> districtList = districts.isNotEmpty
//   //       ? districts
//   //           .map((c) => DistrictModel(
//   //                 id: c['district_id'] as int? ?? 0,
//   //                 name: c['district_name'] as String? ?? '',
//   //               ))
//   //           .toList()
//   //       : [];
//   //   return districtList;
//   // }

//   Future<List<JobCategoryModel>> getJobCategories() async {
//     Database db = await instance.database;
//     var jobCategories = await db.query('jobCategories');
//     List<JobCategoryModel> jobCategoryList = jobCategories.isNotEmpty
//         ? jobCategories.map((c) => JobCategoryModel.fromJson(c)).toList()
//         : [];
//     return jobCategoryList;
//   }

//   Future<void> addProvince(List<ProvinceModel> provinces) async {
//     Database db = await instance.database;

//     for (var province in provinces) {
//       var value = {
//         'province_id': province.id,
//         'province_name': province.name,
//         'province_type': province.type,
//       };
//       await db.insert('provinces', value);
//     }
//   }

//   // Future<void> addDistrict(List<DistrictModel> districts) async {
//   //   Database db = await instance.database;

//   //   for (var district in districts) {
//   //     var value = {
//   //       '_id': district.id,
//   //       'name': district.name,
//   //       'slug': district.slug,
//   //       'type': district.type,
//   //       'name_with_type': district.nameWithType,
//   //       'code': district.code,
//   //       'path': district.path,
//   //       'path_with_type': district.pathWithType,
//   //       'parent_code': district.parentCode,
//   //       'isDeleted': district.isDeleted == false ? 0 : 1,
//   //     };
//   //     await db.insert('districts', value);
//   //   }
//   // }

//   Future<void> addJobCategory(List<JobCategoryModel> jobCategory) async {
//     Database db = await instance.database;

//     for (var category in jobCategory) {
//       var value = {
//         'id': category.id,
//         'name': category.name,
//       };
//       await db.insert('jobCategories', value);
//     }
//     print('done.....');
//   }
// }
