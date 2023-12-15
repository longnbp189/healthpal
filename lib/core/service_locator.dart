import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
Future<void> setUpServiceLocator() async {
  //check if user logged in or not
  // serviceLocator.registerFactory<AuthRepository>(
  //   () => AuthRepositoryImpl(),
  // );
  // serviceLocator.registerFactory<SignUpRepository>(
  //   () => SignUpRepositoryImpl(),
  // );
  // serviceLocator.registerFactory<ProfileRepository>(
  //   () => ProfileRepositoryImpl(),
  // );
  // serviceLocator.registerFactory<CompanyRepository>(
  //   () => CompanyRepositoryImpl(),
  // );
  // serviceLocator.registerFactory<CVRepository>(
  //   () => CVRepositoryImpl(),
  // );
  // serviceLocator.registerFactory<JobRepository>(
  //   () => JobRepositoryImpl(),
  // );
  // serviceLocator.registerFactory<NotificationRepository>(
  //   () => NotificationRepositoryImpl(),
  // );
  // //usecase
  // serviceLocator.registerFactory<LoginUsecase>(() => LoginUsecase());
  // serviceLocator.registerFactory<SignUpUsecase>(() => SignUpUsecase());
  // serviceLocator.registerFactory<ProfileUsecase>(() => ProfileUsecase());
  // serviceLocator.registerFactory<CompanyUsecase>(() => CompanyUsecase());
  // serviceLocator.registerFactory<CvUsecase>(() => CvUsecase());
  // serviceLocator.registerFactory<JobUsecase>(() => JobUsecase());
  // serviceLocator
  //     .registerFactory<NotificationUsecase>(() => NotificationUsecase());

  // //datasource
  // serviceLocator
  //     .registerFactory<UserRemoteDataSource>(() => UserRemoteDataSourceImpl());
  // serviceLocator
  //     .registerFactory<SignUpDataSource>(() => SignUpDataSourceImpl());
  // serviceLocator
  //     .registerFactory<ProfileDataSource>(() => ProfileDataSourceImpl());
  // serviceLocator
  //     .registerFactory<CompanyDataSource>(() => CompanyDataSourceImp());
  // serviceLocator.registerFactory<CvDataSource>(() => CvDataSourceImpl());
  // serviceLocator
  //     .registerFactory<JobRemoteDataSource>(() => JobRemoteDataSourceImpl());
  // serviceLocator.registerFactory<NotificationDataSource>(
  //     () => NotificationDataSourceImpl());

  // //services
  // serviceLocator.registerSingleton<UserCacheService>(UserCacheService());

  // //external
  // final sharedPreferences = await SharedPreferences.getInstance();
  // serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
  // // // request
  // // serviceLocator.registerSingleton<Request>(Request());
}
