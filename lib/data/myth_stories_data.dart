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
  MythStory(
    id: 'contendings_horus_seth',
    title: 'Les Contestations d’Horus et Seth',
    theme: 'Pouvoir, légitimité et justice divine',
    summary:
        'Horus et Seth s’affrontent dans une longue série d’épreuves pour le trône.',
    story:
        'Après la mort d’Osiris, Seth revendique le pouvoir, mais Horus défend son droit d’héritier. Les dieux organisent alors des épreuves: force physique, ruse, endurance et plaidoyers devant un tribunal divin. Le conflit dure, se répète, et montre qu’un pouvoir légitime ne se fonde pas seulement sur la violence. Finalement, Horus est reconnu comme roi légitime. Le récit met en scène une idée forte: la souveraineté doit être validée par l’ordre divin et la justice.',
    imagePath: 'assets/images/horus.webp',
    imageSourceUrl:
        'https://en.wikipedia.org/wiki/The_Contendings_of_Horus_and_Set',
    keyLessons: [
      'La légitimité demande preuve et reconnaissance.',
      'La justice institutionnelle limite la force brute.',
    ],
  ),
  MythStory(
    id: 'seven_scorpions',
    title: 'Isis et les Sept Scorpions',
    theme: 'Protection, compassion et guérison',
    summary:
        'Isis protège son fils Horus et guérit un enfant grâce à la parole sacrée.',
    story:
        'Pour fuir le danger, Isis voyage avec son fils Horus et sept scorpions protecteurs. Dans une maison, une femme refuse de les accueillir; plus loin, une autre les aide humblement. Les scorpions, en colère, piquent l’enfant de la femme riche. Isis, touchée par la détresse maternelle, prononce des formules de guérison et sauve l’enfant. Le récit souligne que la protection divine ne sert pas la vengeance: elle restaure la vie et l’équilibre.',
    imagePath: 'assets/images/isis.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Isis',
    keyLessons: [
      'La compassion peut rompre le cycle de la colère.',
      'Le pouvoir sacré est orienté vers la guérison.',
    ],
  ),
  MythStory(
    id: 'heavenly_cow',
    title: 'La Vache Céleste',
    theme: 'Crise du monde et réorganisation cosmique',
    summary:
        'Râ, face à la révolte humaine, réorganise l’univers pour préserver l’ordre.',
    story:
        'Lorsque les humains complotent contre Râ, la déesse prend une forme redoutable pour rétablir l’ordre. Le danger devient extrême, et les dieux doivent freiner la destruction. Râ choisit alors de se retirer du monde terrestre et de monter au ciel sur la Vache céleste. Le cosmos est réorganisé: les distances entre dieux et humains changent, et l’ordre du monde devient plus fragile mais durable. Ce récit explique pourquoi l’harmonie doit être constamment entretenue.',
    imagePath: 'assets/images/ra.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Book_of_the_Heavenly_Cow',
    keyLessons: [
      'Un ordre blessé demande une réorganisation profonde.',
      'Le pouvoir doit savoir se limiter pour durer.',
    ],
  ),
  MythStory(
    id: 'khonsu_bekhten',
    title: 'Khonsou et la Princesse de Bekhten',
    theme: 'Guérison et rayonnement des temples',
    summary:
        'Khonsou est invoqué pour guérir une princesse lointaine frappée d’un mal mystérieux.',
    story:
        'Une princesse étrangère tombe gravement malade, et les guérisseurs locaux échouent. Le pharaon envoie alors une statue sacrée de Khonsou, dieu lunaire et guérisseur, accompagnée de prêtres. À l’arrivée du dieu, le mal recule et la princesse retrouve la santé. Le récit montre le prestige religieux de l’Égypte et la circulation des cultes au-delà de ses frontières. Il insiste aussi sur la puissance thérapeutique des rites et de la présence divine.',
    imagePath: 'assets/images/khonsou.png',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Khonsu',
    keyLessons: [
      'Le soin peut unir des peuples différents.',
      'Le rituel est présenté comme une médecine du corps et de l’âme.',
    ],
  ),
  MythStory(
    id: 'book_of_thoth',
    title: 'Le Livre de Thot',
    theme: 'Savoir interdit et responsabilité',
    summary:
        'Un homme cherche un savoir absolu et découvre le prix d’un pouvoir mal maîtrisé.',
    story:
        'Dans les récits tardifs, un héros ambitieux veut s’emparer d’un livre sacré attribué à Thot, promettant la maîtrise des secrets du monde. Il y parvient, mais ce savoir sans mesure attire les épreuves: pertes, illusions et chute personnelle. Après de grandes souffrances, il comprend que la connaissance sacrée exige discipline et humilité. Le récit met en garde contre la confusion entre sagesse et domination.',
    imagePath: 'assets/images/thoth.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Thoth',
    keyLessons: [
      'Le savoir sans éthique devient dangereux.',
      'La vraie sagesse inclut la limite et la responsabilité.',
    ],
  ),
  MythStory(
    id: 'shipwrecked_sailor',
    title: 'Le Conte du Naufragé',
    theme: 'Destin, peur et confiance',
    summary:
        'Un marin perdu rencontre un grand serpent qui lui révèle le sens de l’épreuve.',
    story:
        'Après un naufrage, un marin échoue sur une île merveilleuse. Il y rencontre un immense serpent qui lui parle avec sagesse. Le serpent lui annonce qu’il sera sauvé et retrouvera sa maison, mais que l’île disparaîtra ensuite. Rentré vivant, le marin comprend que la peur n’est pas une fin: elle peut devenir passage vers une parole plus profonde. Ce récit ancien, entre merveilleux et réflexion morale, parle de confiance au cœur de l’incertitude.',
    imagePath: 'assets/images/kemet_1.png',
    imageSourceUrl:
        'https://en.wikipedia.org/wiki/Tale_of_the_shipwrecked_sailor',
    keyLessons: [
      'L’épreuve peut devenir une école intérieure.',
      'L’espérance aide à traverser l’inconnu.',
    ],
  ),
  MythStory(
    id: 'destruction_of_mankind',
    title: 'La Destruction de l’Humanité',
    theme: 'Colère divine et survie du monde',
    summary:
        'Râ punit la révolte humaine, puis les dieux cherchent à arrêter la destruction.',
    story:
        'Les humains complotent contre Râ, et la déesse guerrière est envoyée pour rétablir l’ordre. Mais la violence devient incontrôlable, menaçant toute vie. Les dieux élaborent alors une ruse pour transformer la fureur en apaisement. Le récit insiste sur un point essentiel: la justice sans mesure peut devenir destruction totale. Le salut du monde passe par l’équilibre retrouvé entre force et compassion.',
    imagePath: 'assets/images/ra.webp',
    imageSourceUrl:
        'https://en.wikipedia.org/wiki/The_Book_of_the_Heavenly_Cow',
    keyLessons: [
      'Même la justice doit rester proportionnée.',
      'L’ordre durable suppose la maîtrise de la force.',
    ],
  ),
  MythStory(
    id: 'osiris_judgment_hall',
    title: 'Le Tribunal d’Osiris',
    theme: 'Jugement, vérité et destinée',
    summary:
        'Dans la salle du jugement, la vérité de la vie passée est révélée.',
    story:
        'Le défunt se présente devant Osiris et les juges divins. Il proclame une “confession négative”, affirmant ne pas avoir commis de fautes graves contre les hommes et les dieux. La pesée du cœur confirme ensuite cette parole. Le tribunal n’est pas seulement une menace: il incarne l’idée qu’une vie juste ouvre un avenir. Le récit relie morale, responsabilité et espérance d’éternité.',
    imagePath: 'assets/images/osiris.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Osiris',
    keyLessons: [
      'La vérité est au centre de toute justice.',
      'La responsabilité personnelle donne sens au destin.',
    ],
  ),
  MythStory(
    id: 'birth_of_horus',
    title: 'La Naissance Cachée d’Horus',
    theme: 'Protection de l’enfance divine',
    summary:
        'Isis cache et protège Horus enfant pour préserver la lignée royale.',
    story:
        'Après la mort d’Osiris, Isis se retire dans les marais du Delta pour protéger son fils Horus des menaces de Seth. Elle s’appuie sur des formules magiques, des divinités protectrices et des guérisons rituelles. Horus grandit dans un monde fragile, entre maladie, danger et protection maternelle. Ce récit met en valeur la force de la maternité sacrée et l’importance de la transmission.',
    imagePath: 'assets/images/isis.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Horus',
    keyLessons: [
      'Protéger l’enfance, c’est protéger l’avenir du monde.',
      'La transmission exige patience et vigilance.',
    ],
  ),
  MythStory(
    id: 'amduat_journey',
    title: 'Le Voyage Nocturne dans l’Amduat',
    theme: 'Nuit cosmique et renaissance',
    summary:
        'Le soleil traverse douze heures nocturnes avant de renaître à l’aube.',
    story:
        'Chaque nuit, la barque solaire entre dans l’Amduat, royaume mystérieux structuré en douze étapes. Le dieu soleil y rencontre des alliés, des portes à franchir et des forces hostiles à neutraliser. Ce parcours symbolise un travail intérieur du cosmos: traverser l’obscurité pour retrouver la lumière. Les tombes royales reprennent ce schéma pour accompagner le défunt dans sa propre renaissance.',
    imagePath: 'assets/images/ra.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Amduat',
    keyLessons: [
      'La renaissance passe par une traversée de l’ombre.',
      'Le temps nocturne est pensé comme un chemin initiatique.',
    ],
  ),
  MythStory(
    id: 'opening_of_mouth',
    title: 'Le Rituel de l’Ouverture de la Bouche',
    theme: 'Renaissance rituelle',
    summary:
        'Le rite redonne symboliquement souffle, parole et sens au défunt.',
    story:
        'Lors des funérailles, un prêtre touche la bouche et les sens de la momie ou de la statue avec des instruments rituels. Ce geste ne vise pas un miracle matériel, mais une restauration symbolique des fonctions vitales dans l’au-delà: respirer, parler, voir, entendre. Le rite relie la mort à une nouvelle forme d’existence. Il exprime la conviction qu’un être peut continuer à vivre s’il est reconnu par les gestes justes.',
    imagePath: 'assets/images/anubis.webp',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Open_mouth_ceremony',
    keyLessons: [
      'Les rites donnent forme au passage entre les mondes.',
      'La mémoire collective soutient la continuité de la personne.',
    ],
  ),
  MythStory(
    id: 'book_of_gates',
    title: 'Le Livre des Portes',
    theme: 'Passage, épreuve et lumière',
    summary:
        'Le soleil franchit des portes nocturnes gardées avant de renaître.',
    story:
        'Dans ce grand texte funéraire, la nuit est divisée en sections séparées par des portes gardées. Le dieu solaire doit prononcer les noms justes et suivre l’ordre du parcours pour continuer sa route. Les âmes justes sont associées à ce mouvement vers la lumière, tandis que le désordre est tenu à distance. Le récit transforme le voyage nocturne en pédagogie spirituelle: franchir chaque étape avec justesse.',
    imagePath: 'assets/images/kemet_1.png',
    imageSourceUrl: 'https://en.wikipedia.org/wiki/Book_of_Gates',
    keyLessons: [
      'Connaître les passages, c’est traverser la peur.',
      'La lumière finale est le fruit d’un chemin ordonné.',
    ],
  ),
];
