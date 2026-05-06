import '../models/monument.dart';

const monumentsData = [
  Monument(
    id: 'gizeh',
    name: 'Pyramides de Gizeh',
    location: 'Plateau de Gizeh',
    category: 'Pyramides',
    importance:
        'Chef-d’œuvre funéraire de l’Ancien Empire. Elles montrent la maîtrise technique et la dimension religieuse du pouvoir royal.',
    imagePath: 'assets/images/gizeh.jpg',
    altImagePath: 'assets/images/gizeh.webp',
    highlights: [
      'Complexe incluant Khéops, Khéphren et Mykérinos.',
      'Ensemble emblématique de la IVe dynastie.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Giza_pyramid_complex',
  ),
  Monument(
    id: 'sphinx',
    name: 'Sphinx',
    location: 'Gizeh',
    category: 'Statue monumentale',
    importance:
        'Statue emblématique associant force royale et mystère. Elle gardait symboliquement l’accès aux monuments funéraires.',
    imagePath: 'assets/images/sphinx.jpg',
    altImagePath: 'assets/images/sphinx.webp',
    highlights: [
      'Corps de lion et tête royale.',
      'Symbole majeur de la royauté et de la protection sacrée.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Great_Sphinx_of_Giza',
  ),
  Monument(
    id: 'saqqarah',
    name: 'Nécropole de Saqqarah',
    location: 'Memphis',
    category: 'Nécropole',
    importance:
        'Site majeur avec la pyramide à degrés de Djéser, étape clé de l’évolution de l’architecture pyramidale.',
    imagePath: 'assets/images/saqqarah_v2.jpg',
    altImagePath: 'assets/images/saqqarah_v2.webp',
    highlights: [
      'Immense nécropole liée à Memphis.',
      'Laboratoire architectural des premières grandes pyramides.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Saqqara',
  ),
  Monument(
    id: 'djeser_pyramid',
    name: 'Pyramide à degrés de Djéser',
    location: 'Saqqarah',
    category: 'Pyramides',
    importance:
        'Première grande pyramide monumentale d’Égypte, tournant majeur de l’architecture funéraire.',
    imagePath: 'assets/images/saqqarah.jpg',
    altImagePath: 'assets/images/saqqarah.webp',
    highlights: [
      'Attribuée à Djéser et à Imhotep.',
      'Transition clé entre mastaba et pyramide monumentale.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Pyramid_of_Djoser',
  ),
  Monument(
    id: 'karnak',
    name: 'Karnak',
    location: 'Thèbes',
    category: 'Temple',
    importance:
        'Immense complexe religieux dédié notamment à Amon, agrandi pendant des siècles.',
    imagePath: 'assets/images/karnak.jpg',
    altImagePath: 'assets/images/karnak.webp',
    highlights: [
      'Salle hypostyle monumentale.',
      'Centre religieux majeur du Nouvel Empire.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Karnak',
  ),
  Monument(
    id: 'louxor',
    name: 'Louxor',
    location: 'Thèbes',
    category: 'Temple',
    importance:
        'Temple majeur lié à la royauté et aux grandes fêtes comme l’Opet.',
    imagePath: 'assets/images/louxor.jpg',
    altImagePath: 'assets/images/louxor.webp',
    highlights: [
      'Relié à Karnak par une avenue processionnelle.',
      'Lieu central des célébrations royales.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Luxor_Temple',
  ),
  Monument(
    id: 'vallee_rois',
    name: 'Vallée des Rois',
    location: 'Rive ouest de Louxor',
    category: 'Nécropole',
    importance:
        'Nécropole royale du Nouvel Empire avec des tombes décorées du voyage dans l’au-delà.',
    imagePath: 'assets/images/vallee_rois.jpg',
    altImagePath: 'assets/images/vallee_rois.webp',
    highlights: [
      'Tombeaux de nombreux pharaons.',
      'Textes et décors funéraires majeurs.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Valley_of_the_Kings',
  ),
  Monument(
    id: 'deir_el_bahari',
    name: 'Deir el-Bahari',
    location: 'Rive ouest de Louxor',
    category: 'Temple funéraire',
    importance:
        'Ensemble funéraire spectaculaire, notamment le temple d’Hatchepsout.',
    imagePath: 'assets/images/deir_el_bahari.jpg',
    altImagePath: 'assets/images/deir_el_bahari.webp',
    highlights: [
      'Architecture en terrasses.',
      'Site emblématique du règne d’Hatchepsout.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Deir_el-Bahari',
  ),
  Monument(
    id: 'abou_simbel',
    name: 'Abou Simbel',
    location: 'Nubie',
    category: 'Temple rupestre',
    importance:
        'Temples de Ramsès II creusés dans la roche, déplacés au XXe siècle pour leur sauvegarde.',
    imagePath: 'assets/images/abou_simbel.jpg',
    altImagePath: 'assets/images/abou_simbel.webp',
    highlights: [
      'Façades colossales de Ramsès II.',
      'Exploit international de sauvegarde patrimoniale.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Abu_Simbel',
  ),
  Monument(
    id: 'philae',
    name: 'Philae',
    location: 'Assouan',
    category: 'Temple',
    importance:
        'Sanctuaire célèbre d’Isis, déplacé après la construction du haut barrage d’Assouan.',
    imagePath: 'assets/images/philae.jpg',
    altImagePath: 'assets/images/philae.webp',
    highlights: [
      'Centre cultuel important dédié à Isis.',
      'Reconstruction sur l’île d’Agilkia.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Philae',
  ),
  Monument(
    id: 'edfou',
    name: 'Temple d’Edfou',
    location: 'Haute-Égypte',
    category: 'Temple',
    importance: 'Un des temples les mieux conservés d’Égypte, dédié à Horus.',
    imagePath: 'assets/images/edfou.jpg',
    altImagePath: 'assets/images/edfou.webp',
    highlights: [
      'Conservation exceptionnelle.',
      'Rituels tardifs bien documentés.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Temple_of_Edfu',
  ),
  Monument(
    id: 'denderah',
    name: 'Temple de Dendérah',
    location: 'Haute-Égypte',
    category: 'Temple',
    importance:
        'Grand centre cultuel d’Hathor, célèbre pour ses reliefs et son décor astronomique.',
    imagePath: 'assets/images/denderah.jpg',
    altImagePath: 'assets/images/denderah.webp',
    highlights: [
      'Décor astronomique célèbre.',
      'Excellente conservation des reliefs.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Dendera_Temple_complex',
  ),
  Monument(
    id: 'kom_ombo',
    name: 'Temple de Kom Ombo',
    location: 'Haute-Égypte',
    category: 'Temple',
    importance:
        'Temple double unique dédié à Sobek et Horus l’Ancien, remarquable par son plan symétrique.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Double sanctuaire et double axe rituel.',
      'Reliefs connus pour leurs scènes médicales.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Kom_Ombo',
  ),
  Monument(
    id: 'medinet_habou',
    name: 'Médinet Habou',
    location: 'Rive ouest de Louxor',
    category: 'Temple funéraire',
    importance:
        'Complexe de Ramsès III connu pour ses murs massifs et ses reliefs historiques détaillés.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Reliefs des conflits contre les Peuples de la mer.',
      'Source majeure pour la fin du Nouvel Empire.',
    ],
    imageSourceUrl:
        'https://en.wikipedia.org/wiki/Mortuary_Temple_of_Ramesses_III',
  ),
  Monument(
    id: 'ramesseum',
    name: 'Ramesseum',
    location: 'Rive ouest de Louxor',
    category: 'Temple funéraire',
    importance:
        'Temple funéraire de Ramsès II, célèbre pour ses colosses et son rôle mémoriel royal.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Monument clé de la propagande ramesside.',
      'Vestiges de colosses gigantesques.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Ramesseum',
  ),
  Monument(
    id: 'abydos_temple',
    name: 'Temple d’Abydos (Séthi Ier)',
    location: 'Abydos',
    category: 'Temple',
    importance:
        'Sanctuaire majeur du culte d’Osiris et célèbre pour la liste royale d’Abydos.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Liste d’Abydos essentielle pour l’histoire dynastique.',
      'Reliefs parmi les plus fins du Nouvel Empire.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Abydos,_Egypt',
  ),
  Monument(
    id: 'temple_esna',
    name: 'Temple d’Esna',
    location: 'Haute-Égypte',
    category: 'Temple',
    importance:
        'Temple tardif remarquable pour ses colonnes et inscriptions bien conservées.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Décor polychrome restauré.',
      'Inscriptions religieuses tardives importantes.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Esna',
  ),
  Monument(
    id: 'amarna',
    name: 'Akhetaton (Amarna)',
    location: 'Moyenne-Égypte',
    category: 'Site urbain',
    importance:
        'Ville fondée par Akhenaton pour le culte d’Aton, capitale d’une réforme religieuse majeure.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Urbanisme conçu pour un projet idéologique.',
      'Témoignage direct de la période amarnienne.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Amarna',
  ),
  Monument(
    id: 'dahchour',
    name: 'Nécropole de Dahchour',
    location: 'Région memphite',
    category: 'Pyramides',
    importance:
        'Site clé de l’évolution pyramidale, avec des monuments associés à Snéfrou.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Pyramide rhomboïdale et pyramide rouge.',
      'Étape technique avant Gizeh.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Dahshur',
  ),
  Monument(
    id: 'meidum',
    name: 'Pyramide de Meïdoum',
    location: 'Région memphite',
    category: 'Pyramides',
    importance:
        'Monument de transition architectural entre formes anciennes et pyramides classiques.',
    imagePath: 'assets/images/placeholder.png',
    highlights: [
      'Photo à venir.',
      'Structure partiellement effondrée très étudiée.',
      'Repère majeur de l’histoire de l’Ancien Empire.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Meidum',
  ),
];
