class Designer {
  final String? name;
  final String? year;
  final String? headquarter;
  final String? biography;
  final String? videoUrl;
  final List<String>? images;
  final String region;

  const Designer({
    this.name,
    this.year,
    this.headquarter,
    this.biography,
    this.videoUrl,
    this.images,
    required this.region,
  });
}

/// Sample data for the 10 designers
final List<Designer> sampleDesigners = [
  Designer(
    name: 'Yueqi Qi',
    year: '2018',
    headquarter: 'Shanghai, China',
    biography:
        'Known for blending traditional Chinese craftsmanship with contemporary silhouettes, creating haute couture that bridges Eastern heritage and Western modernity.',
    region: 'MAINLAND CHINA',
    videoUrl: 'https://www.youtube.com/watch?v=example1',
    images: const [],
  ),
  Designer(
    name: 'Robert Wun',
    year: '2014',
    headquarter: 'London / Hong Kong',
    biography:
        'A couturier celebrated for dramatic sculptural gowns, sharp tailoring, and dark romanticism that has graced red carpets worldwide.',
    region: 'HONG KONG',
    videoUrl: 'https://www.youtube.com/watch?v=example2',
    images: const [],
  ),
  Designer(
    name: 'Tomo Koizumi',
    year: '2017',
    headquarter: 'Tokyo, Japan',
    biography:
        'Famous for voluminous, rainbow-hued organza creations that blur the line between fashion and art, championed by stylists and celebrities alike.',
    region: 'JAPAN',
    videoUrl: 'https://www.youtube.com/watch?v=example3',
    images: const [],
  ),
  Designer(
    name: 'Rok Hwang',
    year: '2016',
    headquarter: 'Seoul, Korea',
    biography:
        'Founder of Rokh, known for deconstructed tailoring and a subversive romantic aesthetic that reimagines classic wardrobe staples.',
    region: 'KOREA',
    videoUrl: 'https://www.youtube.com/watch?v=example4',
    images: const [],
  ),
  Designer(
    name: 'Demna Gvasalia',
    year: '2014',
    headquarter: 'Tbilisi, Georgia',
    biography:
        'A boundary-pushing visionary who transformed streetwear into high fashion, now leading one of the world\'s most influential luxury houses.',
    region: 'GEORGIA',
    videoUrl: 'https://www.youtube.com/watch?v=example5',
    images: const [],
  ),
  Designer(
    name: 'Carl Jan Cruz',
    year: '2016',
    headquarter: 'Manila, Philippines',
    biography:
        'Merging Filipino textile traditions with modern minimalism, creating relaxed yet refined collections that celebrate local craftsmanship.',
    region: 'PHILIPPINES',
    videoUrl: 'https://www.youtube.com/watch?v=example6',
    images: const [],
  ),
  Designer(
    name: 'Max Tan',
    year: '2011',
    headquarter: 'Singapore',
    biography:
        'An avant-garde designer exploring deconstruction and raw aesthetics, with collections that challenge conventional notions of beauty and form.',
    region: 'SINGAPORE',
    videoUrl: 'https://www.youtube.com/watch?v=example7',
    images: const [],
  ),
  Designer(
    name: 'Chu Suwannapha',
    year: '2019',
    headquarter: 'Bangkok, Thailand',
    biography:
        'Championing Thai silk and artisanal weaving techniques in contemporary fashion, bringing centuries-old craft to international runways.',
    region: 'THAILAND',
    videoUrl: 'https://www.youtube.com/watch?v=example8',
    images: const [],
  ),
  Designer(
    name: 'Nguyen Cong Tri',
    year: '2000',
    headquarter: 'Ho Chi Minh City, Vietnam',
    biography:
        'A leading Vietnamese couturier whose intricate, nature-inspired designs have been worn by international celebrities on the global stage.',
    region: 'VIETNAM',
    videoUrl: 'https://www.youtube.com/watch?v=example9',
    images: const [],
  ),
  Designer(
    name: 'Anais Jourden',
    year: '2014',
    headquarter: 'Hong Kong',
    biography:
        'Parisian-trained and Hong Kong-based, known for playful, texture-rich ready-to-wear that combines European chic with Asian innovation.',
    region: 'HONG KONG',
    videoUrl: 'https://www.youtube.com/watch?v=example10',
    images: const [],
  ),
];
