import '../models/myth_story.dart';

const mythStoriesData = [
  MythStory(
    id: 'osiris_cycle',
    title: 'Le Cycle d’Osiris',
    theme: 'Mort, renaissance et justice',
    summary: 'Seth tue Osiris, Isis le reconstitue, Horus poursuit la lignée.',
    story:
        'Osiris règne comme un roi civilisateur: il enseigne l’agriculture, les rites et la justice. Son frère Seth, jaloux, prépare un piège et fait disparaître Osiris. Isis entreprend alors un long voyage pour retrouver son époux. Avec l’aide de Nephthys et d’Anubis, elle accomplit les rites funéraires fondateurs. Horus, fils d’Osiris, grandit dans le secret puis affronte Seth dans une série d’épreuves. Le tribunal divin finit par reconnaître Horus comme héritier légitime. Le récit relie la royauté, la continuité dynastique et l’idée qu’un ordre juste peut renaître même après la rupture.',
    imagePath: 'assets/images/osiris.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Osiris_myth',
    keyLessons: [
      'La justice peut être longue, mais elle structure le monde.',
      'Les rites donnent une mémoire aux communautés.',
      'La légitimité politique est pensée comme un ordre cosmique.',
    ],
  ),
  MythStory(
    id: 'eye_of_horus',
    title: 'L’Œil d’Horus',
    theme: 'Guérison et protection',
    summary: 'Horus perd puis retrouve son œil pendant la lutte contre Seth.',
    story:
        'Dans son combat contre Seth, Horus est blessé et perd un œil. Thot, maître du savoir et des formules, recompose l’œil fragmenté. L’Œil restauré devient un signe de totalité retrouvée: ce qui a été brisé peut être réparé. Dans les pratiques funéraires, ce symbole protège le défunt; dans la vie quotidienne, il protège les maisons, les bateaux et les voyageurs. Au-delà du mythe, il exprime une idée centrale de la pensée égyptienne: maintenir l’intégrité face au chaos.',
    imagePath: 'assets/images/horus.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Eye_of_Horus',
    keyLessons: [
      'La réparation est aussi importante que la victoire.',
      'Un symbole protège parce qu’il raconte une guérison.',
    ],
  ),
  MythStory(
    id: 'solar_barque',
    title: 'La Barque de Râ',
    theme: 'Cycle du soleil et lutte contre le chaos',
    summary: 'Râ traverse le ciel le jour et le monde souterrain la nuit.',
    story:
        'Le matin, Râ apparaît à l’horizon oriental et commence sa traversée du ciel. Le soir, il descend dans la Douat, espace nocturne où se jouent des combats invisibles. Là, il affronte Apophis, serpent du chaos qui cherche à interrompre le cours du temps. Les dieux alliés protègent la barque et permettent au soleil de renaître. Chaque aurore est donc un recommencement: la lumière n’est jamais acquise, elle est conquise chaque nuit.',
    imagePath: 'assets/images/ra.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Solar_deity#Ancient_Egypt',
    keyLessons: [
      'La stabilité du monde dépend d’un effort continu.',
      'L’aube symbolise la victoire répétée de l’ordre.',
    ],
  ),
  MythStory(
    id: 'isis_magic',
    title: 'Isis et le Nom Secret de Râ',
    theme: 'Savoir, parole et pouvoir',
    summary:
        'Isis obtient un savoir sacré en maîtrisant les paroles rituelles.',
    story:
        'Isis veut accéder au cœur du pouvoir créateur: le nom véritable de Râ. Dans la pensée égyptienne, connaître le nom profond d’un être, c’est approcher sa force essentielle. Par intelligence et maîtrise des formules, Isis oblige Râ à lui transmettre ce nom caché. Elle n’en fait pas un pouvoir arbitraire mais une sagesse active, capable de protéger son fils Horus et de soutenir l’ordre juste. Le récit insiste sur la dimension performative de la parole sacrée.',
    imagePath: 'assets/images/isis.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Isis',
    keyLessons: [
      'Le savoir est une puissance responsable.',
      'La parole juste transforme le réel.',
    ],
  ),
  MythStory(
    id: 'weighing_heart',
    title: 'La Pesée du Cœur',
    theme: 'Éthique et au-delà',
    summary: 'Le cœur du défunt est comparé à la plume de Maât.',
    story:
        'À l’entrée de l’au-delà, Anubis conduit le défunt devant la balance. Sur un plateau repose le cœur, mémoire morale de la vie vécue; sur l’autre, la plume de Maât, image de vérité et d’équilibre. Thot enregistre le résultat avec précision. Si le cœur est en harmonie avec Maât, l’âme peut poursuivre sa route. Ce récit donne une dimension éthique forte à la vie quotidienne: chaque acte compte, car il participe à l’ordre du monde.',
    imagePath: 'assets/images/anubis.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Weighing_of_souls',
    keyLessons: [
      'Les actes de la vie ont un poids durable.',
      'La vérité est une mesure, pas seulement une idée.',
    ],
  ),
  MythStory(
    id: 'hathor_sekhmet',
    title: 'Hathor-Sekhmet et l’Apaisement',
    theme: 'Colère divine et réconciliation',
    summary: 'Une puissance destructrice est transformée en force protectrice.',
    story:
        'Face au désordre humain, la déesse prend un visage redoutable, souvent identifié à Sekhmet. Sa violence menace d’emporter toute mesure. Les dieux utilisent alors la ruse: une boisson colorée attire la déesse, qui s’apaise et retrouve une forme bienveillante, associée à Hathor. Le mythe ne nie pas la force: il montre qu’elle doit être canalisée pour redevenir féconde. L’apaisement est présenté comme un acte politique et rituel.',
    imagePath: 'assets/images/hathor.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Hathor',
    keyLessons: [
      'L’excès détruit, l’équilibre reconstruit.',
      'La fête et le rite peuvent rétablir la cohésion.',
    ],
  ),
  MythStory(
    id: 'thoth_calendar',
    title: 'Thot et les Jours Épagomènes',
    theme: 'Temps, ruse et naissance divine',
    summary:
        'Thot gagne des jours supplémentaires pour permettre des naissances sacrées.',
    story:
        'La déesse Nout était empêchée d’enfanter pendant les jours ordinaires de l’année. Thot, dieu du calcul et de la ruse, gagne à la lune une fraction de lumière et crée cinq jours hors calendrier: les jours épagomènes. C’est durant ces jours que naissent Osiris, Isis, Seth, Nephthys et Horus l’Ancien. Le récit explique à la fois l’organisation du temps et l’importance du savoir mathématique dans l’ordre cosmique.',
    imagePath: 'assets/images/thoth.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Thoth',
    keyLessons: [
      'Le temps peut être réorganisé par l’intelligence.',
      'Le calcul est perçu comme une force cosmique.',
    ],
  ),
  MythStory(
    id: 'maat_balance',
    title: 'Maât, Fille de Râ',
    theme: 'Vérité, équilibre et gouvernance',
    summary: 'Maât incarne la règle qui maintient le monde en ordre.',
    story:
        'Maât n’est pas seulement une déesse: elle est un principe vivant d’équilibre, de vérité et de juste mesure. Le pharaon doit “offrir Maât” aux dieux, c’est-à-dire gouverner sans excès, protéger les faibles et maintenir la paix. Dans les textes, mentir, voler ou briser les serments n’est pas une faute privée seulement: c’est une blessure infligée à l’ordre du monde. Le récit de Maât relie morale personnelle et stabilité collective.',
    imagePath: 'assets/images/maat.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Maat',
    keyLessons: [
      'L’éthique individuelle soutient l’équilibre collectif.',
      'La vérité est un pilier politique et spirituel.',
    ],
  ),
  MythStory(
    id: 'bastet_protection',
    title: 'Bastet et la Maison Protégée',
    theme: 'Protection quotidienne et douceur',
    summary: 'Bastet veille sur le foyer, les enfants et la vie paisible.',
    story:
        'Bastet est associée à la douceur, à la musique, à la fécondité et à la protection de la maison. Contrairement aux grands récits royaux, son culte touche la vie ordinaire: mères, artisans, marins et familles lui demandent protection. Elle incarne une force vigilante mais bienveillante, capable d’éloigner le malheur sans violence excessive. Son mythe rappelle que le sacré égyptien vit aussi dans les gestes simples du quotidien.',
    imagePath: 'assets/images/bastet.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Bastet',
    keyLessons: [
      'Le sacré concerne aussi la vie de tous les jours.',
      'Protéger le foyer, c’est protéger la société entière.',
    ],
  ),
];
