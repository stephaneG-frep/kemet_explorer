import '../models/egyptian_god.dart';

const godsData = [
  EgyptianGod(
    id: 'ra',
    name: 'Râ',
    role: 'Dieu du soleil',
    symbol: 'Disque solaire',
    description:
        'Râ est la grande divinité solaire. Pour les anciens Égyptiens, il traverse le ciel dans sa barque le jour puis affronte les forces du chaos durant la nuit avant de renaître à l’aube.',
    imagePath: 'assets/images/ra.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Ra',
  ),
  EgyptianGod(
    id: 'isis',
    name: 'Isis',
    role: 'Déesse de la magie et de la maternité',
    symbol: 'Trône',
    description:
        'Isis incarne la protection, la fidélité et la connaissance des rites sacrés. Son culte très populaire s’est diffusé bien au-delà de l’Égypte.',
    imagePath: 'assets/images/isis.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Isis',
  ),
  EgyptianGod(
    id: 'osiris',
    name: 'Osiris',
    role: 'Dieu de l’au-delà',
    symbol: 'Crosse et fouet',
    description:
        'Osiris règne sur le royaume des morts et représente l’espérance d’une nouvelle vie. Il est aussi associé aux cycles agricoles et à la fertilité du Nil.',
    imagePath: 'assets/images/osiris.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Osiris',
  ),
  EgyptianGod(
    id: 'horus',
    name: 'Horus',
    role: 'Dieu du ciel et de la royauté',
    symbol: 'Faucon',
    description:
        'Horus protège le pharaon vivant et symbolise l’ordre royal. Son œil est devenu un signe majeur de protection et de guérison.',
    imagePath: 'assets/images/horus.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Horus',
  ),
  EgyptianGod(
    id: 'anubis',
    name: 'Anubis',
    role: 'Dieu de l’embaumement',
    symbol: 'Chacal',
    description:
        'Anubis veille aux rites funéraires et guide les défunts. Il est lié à la pesée du cœur, moment clé du jugement dans l’au-delà.',
    imagePath: 'assets/images/anubis.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Anubis',
  ),
  EgyptianGod(
    id: 'hathor',
    name: 'Hathor',
    role: 'Déesse de l’amour, de la musique et de la joie',
    symbol: 'Vache sacrée et sistre',
    description:
        'Hathor est liée à la fête, à la féminité et à la protection maternelle. Elle est aussi associée à l’accueil des défunts dans l’au-delà.',
    imagePath: 'assets/images/hathor.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Hathor',
  ),
  EgyptianGod(
    id: 'thoth',
    name: 'Thot',
    role: 'Dieu du savoir et de l’écriture',
    symbol: 'Ibis',
    description:
        'Thot est patron des scribes, des sciences et du calcul du temps. Il incarne la sagesse et la justesse des paroles rituelles.',
    imagePath: 'assets/images/thoth.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Thoth',
  ),
  EgyptianGod(
    id: 'maat',
    name: 'Maât',
    role: 'Déesse de l’ordre et de la justice',
    symbol: 'Plume de Maât',
    description:
        'Maât représente l’équilibre du monde, la vérité et la justice. Son principe fonde la légitimité du pouvoir et le jugement des morts.',
    imagePath: 'assets/images/maat.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Maat',
  ),
  EgyptianGod(
    id: 'seth',
    name: 'Seth',
    role: 'Dieu du désert et des forces turbulentes',
    symbol: 'Animal séthien',
    description:
        'Seth est associé au chaos, aux tempêtes et aux terres arides. Son rôle ambivalent participe à l’équilibre entre ordre et désordre.',
    imagePath: 'assets/images/seth.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Set_(deity)',
  ),
  EgyptianGod(
    id: 'bastet',
    name: 'Bastet',
    role: 'Déesse protectrice du foyer',
    symbol: 'Chatte',
    description:
        'Bastet est liée à la maison, à la protection et à la bienveillance. Son culte est très populaire dans la vie quotidienne.',
    imagePath: 'assets/images/bastet.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Bastet',
  ),
  EgyptianGod(
    id: 'ptah',
    name: 'Ptah',
    role: 'Dieu créateur et patron des artisans',
    symbol: 'Bâton composite',
    description:
        'Ptah est une grande divinité de Memphis. Il est associé à la création par la pensée et la parole, ainsi qu’aux artisans et aux bâtisseurs.',
    imagePath: 'assets/images/god_ptah.jpg',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Ptah',
  ),
  EgyptianGod(
    id: 'sekhmet',
    name: 'Sekhmet',
    role: 'Déesse de la puissance et de la guérison',
    symbol: 'Lionne et disque solaire',
    description:
        'Sekhmet incarne une force redoutable, protectrice du roi et destructrice des ennemis. Elle est aussi invoquée pour la médecine et la guérison.',
    imagePath: 'assets/images/god_sekhmet.jpg',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Sekhmet',
  ),
  EgyptianGod(
    id: 'khnum',
    name: 'Khnoum',
    role: 'Dieu du Nil et du modelage des êtres',
    symbol: 'Bélier et tour de potier',
    description:
        'Khnoum est lié aux sources du Nil et à la création de l’être humain, qu’il façonne symboliquement sur son tour de potier.',
    imagePath: 'assets/images/god_khnum.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Khnum',
  ),
  EgyptianGod(
    id: 'sobek',
    name: 'Sobek',
    role: 'Dieu des eaux et de la fertilité',
    symbol: 'Crocodile',
    description:
        'Sobek unit puissance militaire, fertilité et force des eaux. Son culte est particulièrement important dans les régions du Fayoum.',
    imagePath: 'assets/images/god_sobek.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Sobek',
  ),
  EgyptianGod(
    id: 'nephthys',
    name: 'Nephthys',
    role: 'Déesse protectrice des rites funéraires',
    symbol: 'Hiéroglyphe du palais et du panier',
    description:
        'Nephthys accompagne Isis dans les récits funéraires. Elle protège les morts et veille sur les rituels de passage vers l’au-delà.',
    imagePath: 'assets/images/god_nephthys.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Nephthys',
  ),
  EgyptianGod(
    id: 'nut',
    name: 'Nout',
    role: 'Déesse du ciel',
    symbol: 'Voûte céleste étoilée',
    description:
        'Nout est figurée comme l’arche du ciel qui enveloppe le monde. Elle avale le soleil au couchant et le met au monde à l’aube.',
    imagePath: 'assets/images/god_nut.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Nut_(goddess)',
  ),
  EgyptianGod(
    id: 'geb',
    name: 'Geb',
    role: 'Dieu de la terre',
    symbol: 'Oie',
    description:
        'Geb représente la terre fertile. Avec Nout, il forme un couple cosmique fondamental dans la compréhension égyptienne de l’univers.',
    imagePath: 'assets/images/god_geb.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Geb',
  ),
  EgyptianGod(
    id: 'amun',
    name: 'Amon',
    role: 'Dieu majeur de Thèbes',
    symbol: 'Double plume',
    description:
        'Amon devient une divinité centrale du Nouvel Empire. Souvent uni à Râ, il incarne une puissance créatrice et royale.',
    imagePath: 'assets/images/god_amun.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Amun',
  ),
  EgyptianGod(
    id: 'khonsou',
    name: 'Khonsou',
    role: 'Dieu lunaire',
    symbol: 'Disque lunaire',
    description:
        'Khonsou est associé à la lune, au temps et à la guérison. Il fait partie de la triade thébaine avec Amon et Mout.',
    imagePath: 'assets/images/god_khonsou.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Khonsu',
  ),
  EgyptianGod(
    id: 'mout',
    name: 'Mout',
    role: 'Grande déesse-mère de Thèbes',
    symbol: 'Couronne double',
    description:
        'Mout est une déesse maternelle et royale. Son culte souligne la protection du royaume et la dimension familiale du panthéon.',
    imagePath: 'assets/images/god_mout.png',
    useCartouche: true,
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Mut',
  ),
];
