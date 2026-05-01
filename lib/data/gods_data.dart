import '../models/egyptian_god.dart';

const godsData = [
  EgyptianGod(
    id: 'ra',
    name: 'Râ',
    role: 'Dieu du soleil',
    symbol: 'Disque solaire',
    description:
        'Râ est la grande divinité solaire. Pour les anciens Égyptiens, il traverse le ciel dans sa barque le jour puis affronte les forces du chaos durant la nuit avant de renaître à l’aube.',
    imagePath: 'assets/images/ra.jpg',
  ),
  EgyptianGod(
    id: 'isis',
    name: 'Isis',
    role: 'Déesse de la magie et de la maternité',
    symbol: 'Trône',
    description:
        'Isis incarne la protection, la fidélité et la connaissance des rites sacrés. Son culte très populaire s’est diffusé bien au-delà de l’Égypte.',
    imagePath: 'assets/images/isis.jpg',
  ),
  EgyptianGod(
    id: 'osiris',
    name: 'Osiris',
    role: 'Dieu de l’au-delà',
    symbol: 'Crosse et fouet',
    description:
        'Osiris règne sur le royaume des morts et représente l’espérance d’une nouvelle vie. Il est aussi associé aux cycles agricoles et à la fertilité du Nil.',
    imagePath: 'assets/images/osiris.jpg',
  ),
  EgyptianGod(
    id: 'horus',
    name: 'Horus',
    role: 'Dieu du ciel et de la royauté',
    symbol: 'Faucon',
    description:
        'Horus protège le pharaon vivant et symbolise l’ordre royal. Son œil est devenu un signe majeur de protection et de guérison.',
    imagePath: 'assets/images/horus.jpg',
  ),
  EgyptianGod(
    id: 'anubis',
    name: 'Anubis',
    role: 'Dieu de l’embaumement',
    symbol: 'Chacal',
    description:
        'Anubis veille aux rites funéraires et guide les défunts. Il est lié à la pesée du cœur, moment clé du jugement dans l’au-delà.',
    imagePath: 'assets/images/anubis.jpg',
  ),
];
