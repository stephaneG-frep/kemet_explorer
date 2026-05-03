import '../models/writing_system.dart';

const writingSystemsData = [
  WritingSystem(
    id: 'hieroglyphes',
    name: 'Hiéroglyphes',
    period: 'c. 3200 av. J.-C. - IVe s. apr. J.-C.',
    usage: 'Monuments, temples, tombes, textes sacrés',
    description:
        'Écriture figurative la plus connue de l’Égypte antique. Les signes peuvent représenter des sons, des idées ou préciser le sens d’un mot.',
    keyPoints: [
      'Très utilisée pour les inscriptions officielles et religieuses.',
      'Se lit selon l’orientation des signes (humains/animaux regardent le début de la ligne).',
      'Combine phonogrammes, idéogrammes et déterminatifs.',
    ],
  ),
  WritingSystem(
    id: 'hieratique',
    name: 'Hiératique',
    period: 'dès c. 3000 av. J.-C.',
    usage: 'Administration, lettres, comptes, textes religieux sur papyrus',
    description:
        'Version cursive des hiéroglyphes, plus rapide à tracer. Elle est utilisée au quotidien par les scribes.',
    keyPoints: [
      'Souvent écrite à l’encre sur papyrus ou ostraca.',
      'Idéale pour les usages pratiques et administratifs.',
      'Reste liée à la tradition religieuse pendant des siècles.',
    ],
  ),
  WritingSystem(
    id: 'demotique',
    name: 'Démotique',
    period: 'c. VIIe s. av. J.-C. - Ve s. apr. J.-C.',
    usage: 'Documents juridiques, commerciaux et vie courante',
    description:
        'Écriture encore plus cursive, apparue tardivement. Elle devient très répandue dans les usages civils.',
    keyPoints: [
      'Plus simplifiée et rapide que le hiératique.',
      'Très présente dans les contrats et les archives.',
      'Figure sur la Pierre de Rosette (avec grec et hiéroglyphes).',
    ],
  ),
  WritingSystem(
    id: 'copte',
    name: 'Copte',
    period: 'à partir des premiers siècles apr. J.-C.',
    usage: 'Textes religieux, littérature et correspondance tardive',
    description:
        'Écriture de la langue égyptienne avec alphabet grec complété par quelques signes d’origine démotique.',
    keyPoints: [
      'Étape majeure entre Égypte antique et Égypte chrétienne.',
      'A aidé les chercheurs à mieux comprendre l’égyptien ancien.',
      'Toujours utilisée dans le contexte liturgique copte.',
    ],
  ),
  WritingSystem(
    id: 'scribes',
    name: 'Métier de scribe',
    period: 'Toute l’histoire pharaonique',
    usage: 'Transmission du savoir, gestion de l’État et mémoire écrite',
    description:
        'Le scribe est un acteur central: il note les impôts, rédige les lettres, copie les textes et préserve la culture.',
    keyPoints: [
      'Formation longue dans des écoles de scribes.',
      'Rôle prestigieux dans l’administration et les temples.',
      'Indispensable à la continuité du pouvoir et des traditions.',
    ],
  ),
];
