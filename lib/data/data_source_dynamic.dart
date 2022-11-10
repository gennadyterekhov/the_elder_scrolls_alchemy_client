import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

class DataSourceDynamic {
  DataSourceDynamic(gameName) {
    this.gameName = gameName;
  }
  late String gameName;

  factory DataSourceDynamic.byGame(String gameName) {
    return DataSourceDynamic(gameName);
  }

  Map<String, dynamic> getMap() {
    DataSource.checkGameName(gameName);
    return DataSource.getMap()[gameName];
  }
}
