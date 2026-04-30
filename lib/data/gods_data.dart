import '../models/egyptian_god.dart';

const godsData = [
  EgyptianGod(
    id: 'ra',
    name: 'Râ',
    role: 'Dieu du soleil',
    symbol: 'Disque solaire',
    description:
        'Râ est la divinité solaire majeure. Il traverse le ciel le jour et le monde souterrain la nuit.',
    imagePath: 'assets/images/ra.jpg',
  ),
  EgyptianGod(
    id: 'isis',
    name: 'Isis',
    role: 'Déesse de la magie et de la maternité',
    symbol: 'Trône',
    description:
        'Isis protège les familles et symbolise la sagesse magique. Elle est l’une des déesses les plus vénérées.',
    imagePath: 'assets/images/isis.jpg',
  ),
  EgyptianGod(
    id: 'osiris',
    name: 'Osiris',
    role: 'Dieu de l’au-delà',
    symbol: 'Crosse et fouet',
    description:
        'Osiris règne sur le royaume des morts et incarne la renaissance.',
    imagePath: 'assets/images/osiris.jpg',
  ),
  EgyptianGod(
    id: 'horus',
    name: 'Horus',
    role: 'Dieu du ciel et de la royauté',
    symbol: 'Faucon',
    description:
        'Horus protège le pharaon et représente le pouvoir royal légitime.',
    imagePath: 'assets/images/horus.jpg',
  ),
  EgyptianGod(
    id: 'anubis',
    name: 'Anubis',
    role: 'Dieu de l’embaumement',
    symbol: 'Chacal',
    description:
        'Anubis accompagne les défunts et veille aux rites funéraires.',
    imagePath: 'assets/images/anubis.jpg',
  ),
];
