import 'gods_data.dart';
import 'monuments_data.dart';
import 'pharaohs_data.dart';

class GlobalGalleryData {
  static List<String> buildImages() {
    final images = <String>[];
    images.addAll(godsData.map((e) => e.imagePath));
    images.addAll(pharaohsData.map((e) => e.imagePath));
    for (final m in monumentsData) {
      images.add(m.imagePath);
      if (m.altImagePath != null) {
        images.add(m.altImagePath!);
      }
    }
    return images;
  }

  static List<String> buildTitles() {
    final titles = <String>[];
    titles.addAll(godsData.map((e) => 'Mythologie • ${e.name}'));
    titles.addAll(pharaohsData.map((e) => 'Pharaons • ${e.name}'));
    for (final m in monumentsData) {
      titles.add('Monuments • ${m.name} • vue 1');
      if (m.altImagePath != null) {
        titles.add('Monuments • ${m.name} • vue 2');
      }
    }
    return titles;
  }

  static int indexForGodId(String id) {
    final index = godsData.indexWhere((e) => e.id == id);
    return index < 0 ? 0 : index;
  }

  static int indexForPharaohId(String id) {
    final pIndex = pharaohsData.indexWhere((e) => e.id == id);
    if (pIndex < 0) return 0;
    return godsData.length + pIndex;
  }

  static int indexForMonumentId(String id) {
    var offset = godsData.length + pharaohsData.length;
    for (final m in monumentsData) {
      if (m.id == id) {
        return offset;
      }
      offset += 1;
      if (m.altImagePath != null) {
        offset += 1;
      }
    }
    return 0;
  }
}
