/// Category tree for the dev fake backend, in RU and TK.
///
/// Each node: slug, Russian name, Turkmen name, children. Some second-level
/// nodes have no children on purpose (they are leaves themselves).
class FakeNode {
  const FakeNode(this.slug, this.ru, this.tk, this.children);

  final String slug;
  final String ru;
  final String tk;
  final List<FakeNode> children;
}

abstract final class FakeCatalogTree {
  /// Roots whose products have a size filter, and which size scale.
  static const clothingRoots = {'clothes'};
  static const shoeRoots = {'shoes'};

  static const List<FakeNode> roots = [
    FakeNode('clothes', 'Одежда', 'Eşikler', [
      FakeNode('clothes-women', 'Женщинам', 'Aýallara', [
        FakeNode('clothes-women-dresses', 'Платья', 'Köýnekler', []),
        FakeNode('clothes-women-blouses', 'Блузки', 'Bluzkalar', []),
        FakeNode('clothes-women-jeans', 'Джинсы', 'Jinsiler', []),
        FakeNode('clothes-women-outer', 'Верхняя одежда', 'Daşky eşikler', []),
      ]),
      FakeNode('clothes-men', 'Мужчинам', 'Erkeklere', [
        FakeNode('clothes-men-tshirts', 'Футболки', 'Futbolkalar', []),
        FakeNode('clothes-men-shirts', 'Рубашки', 'Erkek köýnekleri', []),
        FakeNode('clothes-men-trousers', 'Брюки', 'Balaklar', []),
        FakeNode('clothes-men-jackets', 'Куртки', 'Kurtkalar', []),
      ]),
      FakeNode('clothes-kids', 'Детская одежда', 'Çaga eşikleri', []),
    ]),
    FakeNode('shoes', 'Обувь', 'Aýakgap', [
      FakeNode('shoes-women', 'Женская', 'Aýallaryňky', [
        FakeNode('shoes-women-sneakers', 'Кроссовки', 'Krossowkalar', []),
        FakeNode('shoes-women-boots', 'Ботинки', 'Botinkalar', []),
        FakeNode('shoes-women-sandals', 'Сандалии', 'Sandallar', []),
      ]),
      FakeNode('shoes-men', 'Мужская', 'Erkekleriňki', [
        FakeNode('shoes-men-sneakers', 'Кроссовки', 'Krossowkalar', []),
        FakeNode('shoes-men-boots', 'Ботинки', 'Botinkalar', []),
        FakeNode('shoes-men-classic', 'Туфли', 'Tuflilar', []),
      ]),
    ]),
    FakeNode('electronics', 'Электроника', 'Elektronika', [
      FakeNode('el-phone', 'Аксессуары для телефонов', 'Telefon esbaplary', [
        FakeNode('el-phone-cases', 'Чехлы', 'Gaplar', []),
        FakeNode('el-phone-chargers', 'Зарядки', 'Zarýad berijiler', []),
        FakeNode('el-phone-powerbanks', 'Пауэрбанки', 'Pauerbanklar', []),
      ]),
      FakeNode('el-audio', 'Аудио', 'Audio', [
        FakeNode('el-audio-headphones', 'Наушники', 'Gulaklyklar', []),
        FakeNode('el-audio-speakers', 'Колонки', 'Kolonkalar', []),
      ]),
      FakeNode('el-smart', 'Умные устройства', 'Akylly enjamlar', [
        FakeNode('el-smart-watches', 'Смарт-часы', 'Akylly sagatlar', []),
        FakeNode('el-smart-bands', 'Фитнес-браслеты', 'Fitnes bilezikleri', []),
      ]),
    ]),
    FakeNode('home', 'Дом и кухня', 'Öý we aşhana', [
      FakeNode('home-kitchen', 'Кухня', 'Aşhana', [
        FakeNode('home-kitchen-cookware', 'Посуда', 'Gap-gaç', []),
        FakeNode('home-kitchen-knives', 'Ножи', 'Pyçaklar', []),
        FakeNode('home-kitchen-storage', 'Хранение', 'Saklamak üçin', []),
      ]),
      FakeNode('home-textile', 'Текстиль', 'Dokma önümler', [
        FakeNode(
          'home-textile-bedding',
          'Постельное бельё',
          'Düşek esbaplary',
          [],
        ),
        FakeNode('home-textile-towels', 'Полотенца', 'Polotensalar', []),
      ]),
      FakeNode('home-decor', 'Декор', 'Bezeg', []),
    ]),
    FakeNode('kids', 'Детям', 'Çagalar üçin', [
      FakeNode('kids-toys', 'Игрушки', 'Oýunjaklar', [
        FakeNode('kids-toys-blocks', 'Конструкторы', 'Konstruktorlar', []),
        FakeNode('kids-toys-dolls', 'Куклы', 'Gurjaklar', []),
        FakeNode('kids-toys-cars', 'Машинки', 'Maşynjyklar', []),
      ]),
      FakeNode('kids-school', 'Школа', 'Mekdep', []),
    ]),
    FakeNode('beauty', 'Красота', 'Gözellik', [
      FakeNode('beauty-makeup', 'Макияж', 'Makiýaž', []),
      FakeNode('beauty-care', 'Уход', 'Ideg', [
        FakeNode('beauty-care-face', 'Для лица', 'Ýüz üçin', []),
        FakeNode('beauty-care-hair', 'Для волос', 'Saç üçin', []),
      ]),
    ]),
    FakeNode('sport', 'Спорт', 'Sport', [
      FakeNode('sport-fitness', 'Фитнес', 'Fitnes', [
        FakeNode('sport-fitness-mats', 'Коврики', 'Düşekçeler', []),
        FakeNode('sport-fitness-weights', 'Гантели', 'Ganteller', []),
      ]),
      FakeNode('sport-outdoor', 'Туризм', 'Syýahat', [
        FakeNode('sport-outdoor-tents', 'Палатки', 'Çadyrlar', []),
        FakeNode('sport-outdoor-backpacks', 'Рюкзаки', 'Arka torbalar', []),
      ]),
    ]),
    FakeNode('auto', 'Авто', 'Awtoulag', [
      FakeNode('auto-acc', 'Аксессуары', 'Esbaplar', [
        FakeNode('auto-acc-holders', 'Держатели', 'Saklaýjylar', []),
        FakeNode('auto-acc-organizers', 'Органайзеры', 'Guraplar', []),
      ]),
      FakeNode('auto-care', 'Автохимия', 'Awtohimiýa', []),
    ]),
  ];
}
