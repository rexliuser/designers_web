class Designer {
  final String id;
  final String? name;
  final String? year;
  final String? headquarter;
  final String? biography;
  final String? videoUrl;
  final List<String>? images;
  final String region;
  final String? profileImage;

  const Designer({
    required this.id,
    this.name,
    this.year,
    this.headquarter,
    this.biography,
    this.videoUrl,
    this.images,
    required this.region,
    this.profileImage,
  });
}

/// Sample data for the designers
final List<Designer> sampleDesigners = [
  Designer(
    id: 'ACT-N1',
    name: 'ACT N°1',
    year: '2016',
    headquarter: 'Milan',
    biography:
        'ACT N°1 is a brand founded in Reggio Emilia in 2016 by designers Galib Gassanoff and Luca Lin, expressing an unshakable style focusing on art, craftmanship and multiculturalism.\n'
        'In 2017 ACT N°1 won Who is on Next? organized by Vogue and AltaRoma. Since September 2018 the brand started showing at Milan Fashion Week and in 2019 established a headquarter and design studio in Milan.\n'
        'ACT N°1 uncompromising image has caught the attention of stylists and celebrities like Dua Lipa, Sharon Stone, Lady Gaga, Zara Larsson, Ellie Goulding, Rita Ora, Lizzo and Beyoncè. The brand, steadily growinginternationally, it is currently distributed in stores like Bergdorf Goodman, H Lorenzo, IT Group, Beymen, Kadewe, Harvey Nichols among others.\n'
        'At the start of 2023 founders Luca Lin and Galib Gassanoff have decided to part ways: Lin will actively guide the brand both on a creative and strategic point of view, while Gassanoff will start a career in Art and Fashion.',
    region: 'ITALY',
    videoUrl: 'https://www.youtube.com/watch?v=qAM9cbUZweE',
    images: const [
      'assets/designers/act_no1_01.jpg',
      'assets/designers/act_no1_02.png',
      'assets/designers/act_no1_03.png',
      'assets/designers/act_no1_04.png',
    ],
  ),
  Designer(
    id: 'AlienAnt',
    name: 'AlienAnt',
    year: '2019',
    headquarter: 'New York',
    biography:
        'AlienAnt is a high-end fashion label from New York City, our design keywords are Glitch, Dreamland, and Surreal. We are trying to bring absurd personal emotions from abstract dreamland to reality. Our feature is the innovative developed textile called Glitched Fringe Lace.\n'
        'Yuchen Han is a fashion artist who is focused on self-emotion expression and storytelling, he graduated from the FIT Fashion Design MFA program in 2019. Work features on Vogue, Bazaar, Kaltblut, and Not just a label, etc. Clothes are worn and liked by Coldplay, Halsey, Billy Porter, and so on.',
    region: 'USA',
    videoUrl: 'https://youtu.be/-xmKxbuMFA8?si=3JqXhN9s5WlGYX26',
    images: const [
      'assets/designers/alien_ant_01.png',
      'assets/designers/alien_ant_02.png',
      'assets/designers/alien_ant_03.jpg',
      'assets/designers/alien_ant_04.jpg',
    ],
  ),
  Designer(
    id: 'ASSIGNMENTS',
    name: 'ASSIGNMENTS',
    year: '2021',
    headquarter: 'Mainland China',
    biography:
        'ASSIGNMENTS is a women\'s ready-to-wear brand.\n'
        'Elegance, clean silhouettes and fine texture is the core of each brand\'s collection. Our understanding of clothing is the combination of high-quality fabrics and exquisite tailoring, along with the subtle yet striking details and the appropriate sense of fashion. ASSIGNMENTS combines traditional bespoke tailoring techniques with modern elegance, creates a restrained and romantic atmosphere with smooth silhouettes.',
    region: 'MAINLAND CHINA',
    videoUrl: 'https://www.instagram.com/reel/C2cxyl5AQQo/',
    images: const [
      'assets/designers/assignments_01.png',
      'assets/designers/assignments_02.png',
      'assets/designers/assignments_03.png',
    ],
  ),
  Designer(
    id: 'AUBRUINO',
    name: 'AUBRUINO',
    year: '2019',
    headquarter: 'Mainland China',
    biography:
        'AUBRUINO is an independent designer brand established in 2019. With limitless imagination and playfulness, the team began exploring the aesthetic between the body and space, interpreting themselves through clothing and installations.\n'
        'The founder, Aubrey Wang, graduated from Central Saint Martins and the Royal College of Art in the UK. She has collaborated with various artists and brands across different fields, including digital brand SONY, sports brand ASICS, British fashion brand Vivienne Westwood, French fashion brand Nina Ricci, and the British royal leather goods brand William & Son. Her works have been exhibited at events such as the Shanghai Vanguard Art Festival and the Powerlong Art Museum.\n'
        'In 2019, inheriting the "playful and absurd DNA" of her previous works, AUBRUINO was born. The products feature playful printed patterns and streamlined silhouettes, creating a whimsical world through a rich mix of materials and colors, combined with site installations.',
    region: 'MAINLAND CHINA',
    videoUrl: 'https://youtu.be/rd7TGPaZdd8?si=r6psq9ykZLAEZ1V5',
    images: const [
      'assets/designers/aubruino_01.png',
      'assets/designers/aubruino_02.png',
      'assets/designers/aubruino_03.png',
      'assets/designers/aubruino_04.png',
    ],
  ),
];
