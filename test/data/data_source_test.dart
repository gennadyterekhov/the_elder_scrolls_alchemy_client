import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/data/data_source.dart';

void main() {
  group("Test data source", () {
    test("Test skyrim data", () {
      Map<String, dynamic> map = DataSource.getMap()[DataSource.gameNameSkyrim];

      expect(map.containsKey('effects'), true);
      expect(map['effects'].length, 55);

      expect(map.containsKey('ingredients'), true);
      expect(map['ingredients'].length, 109);
    });

    test("Test oblivion data", () {
      Map<String, dynamic> map = DataSource.getMap()[DataSource.gameNameOblivion];

      expect(map.containsKey('effects'), true);
      expect(map['effects'].length, 68);

      expect(map.containsKey('ingredients'), true);
      expect(map['ingredients'].length, 143);
    });

    test("Test morrowind data", () {
      Map<String, dynamic> map = DataSource.getMap()[DataSource.gameNameMorrowind];

      expect(map.containsKey('effects'), true);
      expect(map['effects'].length, 67);

      expect(map.containsKey('ingredients'), true);
      expect(map['ingredients'].length, 71);
    });

    test("Test game names", () {
      expect(DataSource.gameNames.length, 3);
    });
  });
}
