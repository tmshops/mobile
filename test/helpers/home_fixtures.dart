import 'package:tmshop/core/dev/fake_backend/fake_home_samples.dart';
import 'package:tmshop/features/home/data/models/home_mappers.dart';
import 'package:tmshop/features/home/data/models/home_models.dart';
import 'package:tmshop/features/home/domain/entities/home_content.dart';

final fixtureNow = DateTime(2026, 11, 11, 15);

/// Realistic Home content: the dev sample JSON run through the real parser.
HomeContent sampleHome(String languageCode, {bool isFromCache = false}) =>
    sampleHomeModel(
      languageCode,
    ).toEntity(fetchedAt: fixtureNow, isFromCache: isFromCache);

HomeResponseModel sampleHomeModel(String languageCode) =>
    HomeResponseModel.fromJson(
      FakeHomeSamples.home(languageCode, now: fixtureNow),
    );

ProductPage samplePage(String languageCode, {int from = 0, String? next}) =>
    ProductPageModel.fromJson({
      'items': [
        for (var i = from; i < from + 4; i++)
          FakeHomeSamples.product(languageCode, i),
      ],
      'next_cursor': next,
    }).toEntity();
