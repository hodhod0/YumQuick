import 'package:flutter_test/flutter_test.dart';

import 'package:yumquick/data/fake_data.dart';

void main() {
  test('every fake food belongs to a known category', () {
    final categoryIds = FakeData.categories.map((c) => c.id).toSet();
    for (final food in FakeData.foods) {
      expect(categoryIds, contains(food.categoryId), reason: food.name);
    }
  });

  test('food prices are positive', () {
    for (final food in FakeData.foods) {
      expect(food.price, greaterThan(0), reason: food.name);
    }
  });
}
