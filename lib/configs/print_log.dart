import '__configs.dart';

log(data) {
  if (BuildConfig.showLogs) {
    print(data);
  }
}