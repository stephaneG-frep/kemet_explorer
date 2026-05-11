import '../models/archaeologist.dart';
import '../models/discovery_item.dart';

const discoveriesData = [
  DiscoveryItem(
    id: 'tut_tomb',
    title: 'Tombe de Toutânkhamon (KV62)',
    period: 'Découverte en 1922',
    place: 'Vallée des Rois',
    description: 'Tombe royale presque intacte mise au jour par Howard Carter.',
    importance:
        'Elle a révolutionné la connaissance du mobilier funéraire royal.',
    imagePath: 'assets/images/toutankhamon.webp',
    sourceUrl: 'https://en.wikipedia.org/wiki/Tomb_of_Tutankhamun',
    highlights: [
      'Masque funéraire en or devenu iconique.',
      'Documentation scientifique détaillée de la fouille.',
    ],
  ),
  DiscoveryItem(
    id: 'rosetta',
    title: 'Pierre de Rosette',
    period: 'Découverte en 1799',
    place: 'Rashid (Rosette)',
    description: 'Stèle trilingue qui a permis de déchiffrer les hiéroglyphes.',
    importance: 'Base du déchiffrement par Champollion en 1822.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Rosetta_Stone',
    highlights: ['Textes en hiéroglyphique, démotique et grec ancien.'],
  ),
  DiscoveryItem(
    id: 'deir_el_medina_archives',
    title: 'Archives de Deir el-Médina',
    period: 'Découvertes progressives (XIXe-XXe s.)',
    place: 'Thèbes ouest',
    description:
        'Ostraca et papyrus sur la vie quotidienne des artisans des tombes royales.',
    importance: 'Source unique sur le travail, les familles et les croyances.',
    imagePath: 'assets/images/deir_el_medina.jpeg',
    sourceUrl: 'https://en.wikipedia.org/wiki/Deir_el-Medina',
    highlights: ['Conflits sociaux, salaires, fêtes religieuses, procès.'],
  ),
  DiscoveryItem(
    id: 'abydos_king_list',
    title: 'Liste royale d’Abydos',
    period: 'Relevée au XIXe siècle',
    place: 'Temple de Séthi Ier, Abydos',
    description:
        'Suite de cartouches royaux servant de référence pour la succession dynastique.',
    importance: 'Document majeur pour reconstruire la chronologie pharaonique.',
    imagePath: 'assets/images/temple_abydos.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Abydos_King_List',
    highlights: ['Source essentielle, avec limites et omissions connues.'],
  ),
  DiscoveryItem(
    id: 'amarna_letters',
    title: 'Lettres d’Amarna',
    period: 'Découvertes en 1887',
    place: 'Amarna',
    description:
        'Tablettes cunéiformes diplomatiques entre l’Égypte et le Proche-Orient.',
    importance:
        'Elles éclairent la géopolitique du Nouvel Empire au XIVe siècle av. J.-C.',
    imagePath: 'assets/images/amarna_custom.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Amarna_letters',
    highlights: ['Correspondances royales et vassaliques.'],
  ),
  DiscoveryItem(
    id: 'narmer_palette',
    title: 'Palette de Narmer',
    period: 'Identifiée fin XIXe siècle',
    place: 'Hiérakonpolis',
    description:
        'Objet cérémoniel emblématique des débuts de l’État pharaonique.',
    importance: 'Témoignage clé de l’unification et de l’iconographie royale.',
    imagePath: 'assets/images/narmer_custom.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Narmer_Palette',
    highlights: ['Pièce centrale pour l’histoire de la période thinite.'],
  ),
  DiscoveryItem(
    id: 'khufu_ship',
    title: 'Barque solaire de Khéops',
    period: 'Découverte en 1954',
    place: 'Gizeh',
    description:
        'Grande embarcation funéraire démontée retrouvée près de la pyramide de Khéops.',
    importance:
        'Illustration exceptionnelle des rites royaux et de la technique navale.',
    imagePath: 'assets/images/gizeh.jpg',
    sourceUrl: 'https://en.wikipedia.org/wiki/Khufu_ship',
    highlights: ['Conservation remarquable de bois ancien.'],
  ),
  DiscoveryItem(
    id: 'db320_cache',
    title: 'Cachette royale DB320',
    period: 'Découverte en 1881',
    place: 'Deir el-Bahari',
    description:
        'Dépôt de momies royales déplacées pour les protéger des pillages.',
    importance: 'A livré des souverains majeurs comme Séthi Ier et Ramsès II.',
    imagePath: 'assets/images/deir_el_bahari.jpg',
    sourceUrl: 'https://en.wikipedia.org/wiki/DB320',
    highlights: [
      'Réorganisation funéraire à la Troisième Période intermédiaire.',
    ],
  ),
  DiscoveryItem(
    id: 'serapeum_apis',
    title: 'Hypogées du Sérapéum',
    period: 'Mis en évidence au XIXe siècle',
    place: 'Saqqarah',
    description:
        'Galeries funéraires des taureaux Apis avec sarcophages monumentaux.',
    importance: 'Source majeure sur les cultes animaux sacrés.',
    imagePath: 'assets/images/serapeum_saqqarah.jpeg',
    sourceUrl: 'https://en.wikipedia.org/wiki/Serapeum_of_Saqqara',
    highlights: ['Sarcophages massifs et inscriptions cultuelles.'],
  ),
  DiscoveryItem(
    id: 'valley_queens_nefertari',
    title: 'Tombe de Néfertari (QV66)',
    period: 'Documentée dès le XIXe siècle',
    place: 'Vallée des Reines',
    description: 'Tombe prestigieuse célèbre pour ses peintures murales.',
    importance: 'Chef-d’œuvre de l’art funéraire ramesside.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Nefertari',
    highlights: ['Programme iconographique d’une grande finesse.'],
  ),
  DiscoveryItem(
    id: 'tanis_tombs',
    title: 'Tombes royales de Tanis',
    period: 'Découvertes à partir de 1939',
    place: 'Tanis',
    description: 'Sépultures royales de la Troisième Période intermédiaire.',
    importance:
        'Ensemble funéraire souvent comparé à un “second Toutânkhamon”.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Tanis',
    highlights: ['Mobilier précieux et masques funéraires.'],
  ),
];

const archaeologistsData = [
  Archaeologist(
    id: 'champollion',
    name: 'Jean-François Champollion',
    era: '1790-1832',
    specialty: 'Linguistique et épigraphie',
    contribution:
        'Père du déchiffrement des hiéroglyphes grâce à la pierre de Rosette.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Jean-Fran%C3%A7ois_Champollion',
    highlights: [
      'Lettre à M. Dacier (1822), étape fondatrice de l’égyptologie.',
    ],
  ),
  Archaeologist(
    id: 'howard_carter',
    name: 'Howard Carter',
    era: '1874-1939',
    specialty: 'Archéologie de terrain',
    contribution: 'Découvreur de la tombe de Toutânkhamon avec Lord Carnarvon.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Howard_Carter',
    highlights: ['Méthode de fouille et d’inventaire très rigoureuse.'],
  ),
  Archaeologist(
    id: 'mariette',
    name: 'Auguste Mariette',
    era: '1821-1881',
    specialty: 'Organisation patrimoniale',
    contribution:
        'Fondateur du Service des Antiquités égyptiennes et du musée de Boulaq.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Auguste_Mariette',
    highlights: ['Rôle majeur dans la protection des antiquités en Égypte.'],
  ),
  Archaeologist(
    id: 'petrie',
    name: 'Flinders Petrie',
    era: '1853-1942',
    specialty: 'Méthodologie archéologique',
    contribution:
        'Pionnier de la datation relative et des méthodes stratigraphiques.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Flinders_Petrie',
    highlights: ['A posé des standards modernes de fouille.'],
  ),
  Archaeologist(
    id: 'belzoni',
    name: 'Giovanni Belzoni',
    era: '1778-1823',
    specialty: 'Exploration de monuments',
    contribution:
        'Explorateur ayant dégagé et documenté plusieurs sites majeurs de Haute-Égypte.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Giovanni_Battista_Belzoni',
    highlights: ['Personnage-clé des débuts de l’égyptologie européenne.'],
  ),
  Archaeologist(
    id: 'maspero',
    name: 'Gaston Maspero',
    era: '1846-1916',
    specialty: 'Philologie et conservation',
    contribution:
        'Directeur du Service des Antiquités, acteur majeur des politiques de préservation.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Gaston_Maspero',
    highlights: ['Implication forte dans l’étude des textes funéraires.'],
  ),
  Archaeologist(
    id: 'reisner',
    name: 'George Andrew Reisner',
    era: '1867-1942',
    specialty: 'Fouilles stratifiées',
    contribution:
        'Travaux majeurs à Gizeh et en Nubie, avec une documentation méthodique.',
    imagePath: 'assets/images/gizeh.jpg',
    sourceUrl: 'https://en.wikipedia.org/wiki/George_Andrew_Reisner',
    highlights: ['Archives de terrain encore exploitées aujourd’hui.'],
  ),
  Archaeologist(
    id: 'emery',
    name: 'Walter Bryan Emery',
    era: '1903-1971',
    specialty: 'Période archaïque',
    contribution:
        'A approfondi la connaissance des premières dynasties à Saqqarah.',
    imagePath: 'assets/images/saqqarah.jpg',
    sourceUrl: 'https://en.wikipedia.org/wiki/Walter_Bryan_Emery',
    highlights: ['Référence pour les tombes des élites thinite.'],
  ),
  Archaeologist(
    id: 'brier',
    name: 'Bob Brier',
    era: 'Né en 1943',
    specialty: 'Mummy studies',
    contribution:
        'Connu pour la vulgarisation scientifique autour des momies égyptiennes.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Bob_Brier',
    highlights: ['A rendu l’égyptologie accessible au grand public.'],
  ),
  Archaeologist(
    id: 'zahi_hawass',
    name: 'Zahi Hawass',
    era: 'Né en 1947',
    specialty: 'Gestion de sites et communication patrimoniale',
    contribution:
        'Figure contemporaine de la mise en valeur des sites de Gizeh et de Saqqarah.',
    imagePath: 'assets/images/sphinx.jpg',
    sourceUrl: 'https://en.wikipedia.org/wiki/Zahi_Hawass',
    highlights: [
      'Nombreux projets médiatiques et expositions internationales.',
    ],
  ),
  Archaeologist(
    id: 'salima_ikram',
    name: 'Salima Ikram',
    era: 'Née en 1965',
    specialty: 'Archéozoologie et pratiques funéraires',
    contribution: 'Spécialiste des momies animales et des cultes associés.',
    imagePath: 'assets/images/kemet_1.png',
    sourceUrl: 'https://en.wikipedia.org/wiki/Salima_Ikram',
    highlights: ['Travaux académiques de référence sur les animaux sacrés.'],
  ),
  Archaeologist(
    id: 'mark_lehner',
    name: 'Mark Lehner',
    era: 'Né en 1950',
    specialty: 'Plateau de Gizeh',
    contribution:
        'Recherches majeures sur l’urbanisme, les chantiers et le Sphinx à Gizeh.',
    imagePath: 'assets/images/gizeh.jpg',
    sourceUrl: 'https://en.wikipedia.org/wiki/Mark_Lehner',
    highlights: ['Études sur les villages d’ouvriers des pyramides.'],
  ),
];
