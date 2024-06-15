import 'package:flutter_test/flutter_test.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/constant.dart';
import 'package:the_elder_scrolls_alchemy_client/layers/data/resources/data_resource.dart';

void main() {
  group("Test data source", () {
    test("Test skyrim data", () {
      Map<String, dynamic> map = DataResource.getMap()[Constant.gameNameSkyrim];

      expect(map.containsKey('effects'), true);
      expect(map['effects'].length, 55 /*+ 4*/); // 4 effects from AE

      expect(map.containsKey('ingredients'), true);
      expect(map['ingredients'].length, 109 /*+ 51*/); // 51 ingredients from AE
    });

    test("Test oblivion data", () {
      Map<String, dynamic> map = DataResource.getMap()[Constant.gameNameOblivion];

      expect(map.containsKey('effects'), true);
      expect(map['effects'].length, 68);

      expect(map.containsKey('ingredients'), true);
      expect(map['ingredients'].length, 143);
    });

    test("Test morrowind data", () {
      Map<String, dynamic> map = DataResource.getMap()[Constant.gameNameMorrowind];

      expect(map.containsKey('effects'), true);
      expect(map['effects'].length, 67);

      expect(map.containsKey('ingredients'), true);
      expect(map['ingredients'].length, 71);
    });

    test("Test game names", () {
      expect(DataResource.gameNames.length, 4);
    });
  });
}
