List<Works> listOfWorks = List.generate(
  7,
  (index) => Works(
    'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
  ),
);

class Works {
  final String image;

  Works(this.image);
}

List<Offer> listOfOffer = [
  Offer(
    'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
    'Ворота',
    'Промышленные секционные ворота DoorHan устанавливаются в проёмы производственных зданий, складских помещений, цехов, терминалов и прочих промышленных объектов, где они должны отвечать гораздо более жёстким требованиям, в отличие от гаражных ворот. Так как промышленные ворота эксплуатируются с высокой интенсивностью, для обеспечения долгосрочной работы без сбоев, они обладают повышенной износостойкостью за счёт применения специальных технологий. Используемая в воротах система уплотнителей обеспечивает высокую термоизоляцию — сохранение требуемого температурного режима является важной задачей практически для любого промышленного объекта.',
    List<Gates>.generate(
      3,
      (index) => Gates(
        'https://artmetall.su/wp-content/uploads/2018/04/img_20180407_201904.png',
        'Кованные',
      ),
    ),
    List<MainAdvantages>.generate(
      5,
      (index) => MainAdvantages(
        'ПРОМЫШЛЕННЫЙ МАСШТАБ',
        'Данная серия ворот спроектирована специально для перекрытия больших проёмов на промышленных объектах.',
      ),
    ),
  ),
  Offer(
    'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
    'Ворота',
    'Промышленные секционные ворота DoorHan устанавливаются в проёмы производственных зданий, складских помещений, цехов, терминалов и прочих промышленных объектов, где они должны отвечать гораздо более жёстким требованиям, в отличие от гаражных ворот. Так как промышленные ворота эксплуатируются с высокой интенсивностью, для обеспечения долгосрочной работы без сбоев, они обладают повышенной износостойкостью за счёт применения специальных технологий. Используемая в воротах система уплотнителей обеспечивает высокую термоизоляцию — сохранение требуемого температурного режима является важной задачей практически для любого промышленного объекта.',
    List<Gates>.generate(
      6,
      (index) => Gates(
        'https://artmetall.su/wp-content/uploads/2018/04/img_20180407_201904.png',
        'Кованные',
      ),
    ),
    List<MainAdvantages>.generate(
      5,
      (index) => MainAdvantages(
        'ПРОМЫШЛЕННЫЙ МАСШТАБ',
        'Данная серия ворот спроектирована специально для перекрытия больших проёмов на промышленных объектах.',
      ),
    ),
  ),
  Offer(
    'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
    'Ворота',
    'Промышленные секционные ворота DoorHan устанавливаются в проёмы производственных зданий, складских помещений, цехов, терминалов и прочих промышленных объектов, где они должны отвечать гораздо более жёстким требованиям, в отличие от гаражных ворот. Так как промышленные ворота эксплуатируются с высокой интенсивностью, для обеспечения долгосрочной работы без сбоев, они обладают повышенной износостойкостью за счёт применения специальных технологий. Используемая в воротах система уплотнителей обеспечивает высокую термоизоляцию — сохранение требуемого температурного режима является важной задачей практически для любого промышленного объекта.',
    List<Gates>.generate(
      4,
      (index) => Gates(
        'https://artmetall.su/wp-content/uploads/2018/04/img_20180407_201904.png',
        'Кованные',
      ),
    ),
    List<MainAdvantages>.generate(
      5,
      (index) => MainAdvantages(
        'ПРОМЫШЛЕННЫЙ МАСШТАБ',
        'Данная серия ворот спроектирована специально для перекрытия больших проёмов на промышленных объектах.',
      ),
    ),
  ),
];

class MainAdvantages {
  final String title;
  final String desc;

  MainAdvantages(this.title, this.desc);
}

class Offer {
  final String image;
  final String typeOfGates;
  final String desc;
  final List<Gates> listOfGates;
  final List<MainAdvantages> listOfAdvantages;

  Offer(
    this.image,
    this.typeOfGates,
    this.desc,
    this.listOfGates,
    this.listOfAdvantages,
  );
}

class Gates {
  final String image;
  final String gates;

  Gates(this.image, this.gates);
}

class ListOfNewsData {
  List<NewsData> listNewsData = List.generate(
    10,
    (index) => NewsData(
      'Расширение дизайна ворот стандартной серии RSD01SC BIW',
      'https://zalpstroy.ru/wp-content/uploads/0/2/1/021c2a6fc822a9c921ea42daf0d7a538.jpeg',
      'Компания «SelimTrade» сообщает вам о расширении вариантов дизайна гаражных секционных ворот стандартной серии RSD01SC BIW. С 10 марта 2016 года для заказа стали доступны ворота с дизайном панели «доска» в трёх цветовых решениях (RAL 9003, RAL 8014 и «золотой дуб»).',
      'https://zalpstroy.ru/wp-content/uploads/b/1/d/b1dfb23fb2105ac1f858e89a7bcbb4bc.jpeg',
    ),
  );
}

class NewsData {
  final String title;
  final String image;
  final String desc;
  final String table;

  NewsData(this.title, this.image, this.desc, this.table);
}
