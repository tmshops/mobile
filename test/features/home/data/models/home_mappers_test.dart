import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/features/home/data/models/home_mappers.dart';
import 'package:tmshop/features/home/data/models/home_models.dart';
import 'package:tmshop/features/home/domain/entities/home_link.dart';
import 'package:tmshop/features/home/domain/entities/home_section.dart';
import 'package:tmshop/core/product/data/product_summary_model.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';

import '../../../../helpers/home_fixtures.dart';

void main() {
  group('HomeResponseModel → HomeContent', () {
    test('skips section types this version does not know', () {
      final model = sampleHomeModel('ru');
      expect(model.sections.whereType<UnknownSectionModel>(), hasLength(1));

      final content = sampleHome('ru');
      expect(content.sections, hasLength(model.sections.length - 1));
      expect(content.sections.first, isA<VideoStoriesSection>());
    });

    test('shifts countdowns from the server clock to the device clock', () {
      final endsAt = DateTime.utc(2026, 11, 11, 20);
      final model = HomeResponseModel.fromJson({
        // Server is 10 minutes ahead of the phone.
        'server_time': DateTime.utc(2026, 11, 11, 12, 10).toIso8601String(),
        'sections': [
          {
            'type': 'daily_deals',
            'title': 'Скидки дня',
            'ends_at': endsAt.toIso8601String(),
            'products': [
              {'id': '1', 'title': 'T', 'image_url': 'u', 'price': 10},
            ],
          },
        ],
      });

      final content = model.toEntity(
        fetchedAt: DateTime.utc(2026, 11, 11, 12).toLocal(),
      );
      final deals = content.sections.single as DailyDealsSection;
      expect(
        deals.endsAt,
        endsAt.toLocal().subtract(const Duration(minutes: 10)),
      );
    });

    test('drops empty sections and unknown values inside sections', () {
      final model = HomeResponseModel.fromJson({
        'server_time': '2026-11-11T12:00:00Z',
        'sections': [
          {'type': 'products', 'id': 'x', 'title': 'Empty', 'products': []},
          {
            'type': 'how_we_work',
            'title': 'How',
            'steps': ['a'],
            'delivery': [
              {'kind': 'air', 'name': 'Air', 'term': '2 weeks'},
              {'kind': 'boat', 'name': 'Boat', 'term': '3 months'},
            ],
          },
          {
            'type': 'banners',
            'banners': [
              {
                'id': 'b',
                'image_url': 'u',
                'title': 'B',
                'link': {'type': 'teleport', 'value': 'x'},
              },
              {
                'id': 'c',
                'image_url': 'u',
                'title': 'C',
                'link': {'type': 'external', 'value': 'not a url'},
              },
              {
                'id': 'd',
                'image_url': 'u',
                'title': 'D',
                'link': {'type': 'product', 'value': '42'},
              },
            ],
          },
        ],
      });

      final sections = model.toEntity(fetchedAt: fixtureNow).sections;
      expect(sections, hasLength(2));
      final how = sections[0] as HowWeWorkSection;
      expect(how.delivery.single.kind, DeliveryKind.air);
      final banners = (sections[1] as BannersSection).banners;
      expect(banners.map((b) => b.link), [
        null,
        null,
        const HomeLink.product('42'),
      ]);
    });

    test('maps product marks and ignores unknown ones', () {
      final product = ProductSummaryModel.fromJson({
        'id': '1',
        'title': 'T',
        'image_url': 'u',
        'price': 216,
        'old_price': 260,
        'marks': ['hit', 'new', 'mystery'],
      }).toEntity();
      expect(product.marks, {ProductMark.hit, ProductMark.newArrival});
      expect(product.oldPrice, 260);
    });
  });
}
