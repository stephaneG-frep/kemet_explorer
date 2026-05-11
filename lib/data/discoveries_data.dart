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
];
