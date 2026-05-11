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
    imagePath: 'assets/images/saqqarah_necropole_custom.png',
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
    imagePath: 'assets/images/temple_kom_ombo.png',
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
    imagePath: 'assets/images/medinet_habou.jpeg',
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
    imagePath: 'assets/images/ramesseum.jpeg',
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
    imagePath: 'assets/images/temple_abydos.png',
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
    imagePath: 'assets/images/temple_esna.jpeg',
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
    imagePath: 'assets/images/amarna_custom.png',
    highlights: [
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
    imagePath: 'assets/images/dahchour_custom.png',
    highlights: [
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
    imagePath: 'assets/images/meidoum.jpeg',
    highlights: [
      'Photo à venir.',
      'Structure partiellement effondrée très étudiée.',
      'Repère majeur de l’histoire de l’Ancien Empire.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Meidum',
  ),
  Monument(
    id: 'serapeum_saqqara',
    name: 'Sérapéum de Saqqarah',
    location: 'Saqqarah',
    category: 'Nécropole sacrée',
    importance:
        'Complexe souterrain dédié aux taureaux Apis, essentiel pour comprendre les cultes animaux et funéraires.',
    imagePath: 'assets/images/serapeum_saqqarah.jpeg',
    highlights: [
      'Galeries monumentales souterraines.',
      'Rôle religieux majeur à l’époque tardive.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Serapeum_of_Saqqara',
  ),
  Monument(
    id: 'abu_rawash',
    name: 'Abou Rawash',
    location: 'Nord de Gizeh',
    category: 'Pyramides',
    importance:
        'Site de la pyramide de Djédefrê, important pour la compréhension des dynasties de l’Ancien Empire.',
    imagePath: 'assets/images/abou_rawash.jpeg',
    highlights: [
      'Pyramide souvent très ruinée.',
      'Relie Gizeh à l’histoire de la IVe dynastie.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Pyramid_of_Djedefre',
  ),
  Monument(
    id: 'el_lisht',
    name: 'Nécropole d’el-Lisht',
    location: 'Fayoum / Moyenne-Égypte',
    category: 'Pyramides',
    importance:
        'Nécropole des rois du Moyen Empire, notamment Amenemhat Ier et Sésostris Ier.',
    imagePath: 'assets/images/el_lisht.jpeg',
    highlights: [
      'Site central pour le Moyen Empire.',
      'Architecture pyramidale renouvelée après l’Ancien Empire.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/El-Lisht',
  ),
  Monument(
    id: 'hawara',
    name: 'Pyramide de Hawara',
    location: 'Fayoum',
    category: 'Pyramides',
    importance:
        'Pyramide d’Amenemhat III, associée dans l’Antiquité au fameux “Labyrinthe” égyptien.',
    imagePath: 'assets/images/hawara.jpeg',
    highlights: [
      'Témoignage majeur du Moyen Empire tardif.',
      'Traditions grecques sur un vaste complexe annexe.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Hawara',
  ),
  Monument(
    id: 'temple_seti_abydos',
    name: 'Temple de Séthi Ier à Abydos',
    location: 'Abydos',
    category: 'Temple',
    importance:
        'Temple majeur du Nouvel Empire, célèbre pour ses reliefs et pour la liste royale d’Abydos.',
    imagePath: 'assets/images/temple_seti_1.jpeg',
    highlights: [
      'Reliefs raffinés et programme religieux ambitieux.',
      'Source dynastique de référence.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Seti_I_Temple_(Abydos)',
  ),
  Monument(
    id: 'osireion',
    name: 'Osiréion d’Abydos',
    location: 'Abydos',
    category: 'Monument rituel',
    importance:
        'Monument énigmatique lié au culte d’Osiris, complément spirituel du grand temple voisin.',
    imagePath: 'assets/images/osireion_abydos.jpeg',
    highlights: [
      'Architecture monumentale en blocs mégalithiques.',
      'Forte portée symbolique osirienne.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Osireion',
  ),
  Monument(
    id: 'deir_el_medina',
    name: 'Deir el-Médina',
    location: 'Rive ouest de Louxor',
    category: 'Village antique',
    importance:
        'Village des artisans des tombes royales, source exceptionnelle sur la vie quotidienne et les pratiques funéraires.',
    imagePath: 'assets/images/deir_el_medina.jpeg',
    highlights: [
      'Archives uniques sur le travail des artisans.',
      'Lien direct avec Vallée des Rois et Vallée des Reines.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Deir_el-Medina',
  ),
  Monument(
    id: 'colossi_memnon',
    name: 'Colosses de Memnon',
    location: 'Rive ouest de Louxor',
    category: 'Statues monumentales',
    importance:
        'Deux statues géantes d’Amenhotep III, repères emblématiques du paysage thébain.',
    imagePath: 'assets/images/colosse_de_memnon.jpeg',
    highlights: [
      'Vestiges du temple funéraire d’Amenhotep III.',
      'Monuments célèbres dès l’Antiquité gréco-romaine.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Colossi_of_Memnon',
  ),
  Monument(
    id: 'temple_montou_medamud',
    name: 'Temple de Médamoud',
    location: 'Région de Thèbes',
    category: 'Temple',
    importance:
        'Temple dédié à Montou, utile pour comprendre les cultes locaux thébains et leur évolution.',
    imagePath: 'assets/images/temple_medamoud.jpeg',
    highlights: [
      'Importance religieuse locale de Montou.',
      'Phases de construction sur plusieurs périodes.',
    ],
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Medamud',
  ),
];
