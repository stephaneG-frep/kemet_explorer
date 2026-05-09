import '../models/funeral_rite.dart';

const funeralRitesData = [
  FuneralRite(
    id: 'predynastic_burials',
    name: 'Sépultures prédynastiques',
    period: 'avant c. 3100 av. J.-C.',
    summary: 'Tombes simples en fosse, corps et objets déposés avec soin.',
    description:
        'Avant les grandes dynasties, les communautés enterrent leurs morts dans des fosses, souvent avec poteries, parures et offrandes. Ces pratiques montrent déjà une croyance en une continuité après la mort.',
    keyPoints: [
      'Tombes modestes mais rituellement organisées.',
      'Présence d’offrandes alimentaires et d’objets personnels.',
    ],
  ),
  FuneralRite(
    id: 'mastaba',
    name: 'Mastaba',
    period: 'Ire-IIIe dynasties',
    summary:
        'Tombe rectangulaire en briques ou en pierre, ancêtre des pyramides.',
    description:
        'Le mastaba est une superstructure funéraire au-dessus d’une chambre souterraine. Il accueille une chapelle d’offrandes et parfois une stèle, pour maintenir le lien entre vivants et défunt.',
    keyPoints: [
      'Forme rectangulaire à toit plat.',
      'Étape fondamentale vers l’architecture pyramidale.',
    ],
  ),
  FuneralRite(
    id: 'step_pyramid',
    name: 'Pyramide à degrés',
    period: 'IIIe dynastie',
    summary: 'Transition monumentale entre mastaba et pyramide classique.',
    description:
        'Avec Djéser à Saqqarah, la tombe royale prend une forme nouvelle: des mastabas superposés créent une pyramide à degrés. Le complexe funéraire devient un vaste espace rituel.',
    keyPoints: [
      'Innovation majeure de l’Ancien Empire.',
      'Complexe funéraire structuré autour du culte royal.',
    ],
  ),
  FuneralRite(
    id: 'true_pyramid',
    name: 'Pyramide “vraie”',
    period: 'IVe-VIe dynasties',
    summary: 'Grandes pyramides à faces lisses, symbole du pouvoir royal.',
    description:
        'Les pyramides de Snéfrou, Khéops, Khéphren et Mykérinos incarnent une architecture funéraire centralisée et monumentale. Elles s’intègrent à des temples funéraires et des chaussées processionnelles.',
    keyPoints: [
      'Apogée de l’architecture royale de l’Ancien Empire.',
      'Association étroite entre tombe, culte et légitimité politique.',
    ],
  ),
  FuneralRite(
    id: 'coffin_texts',
    name: 'Textes funéraires (pyramides et sarcophages)',
    period: 'Ancien et Moyen Empire',
    summary:
        'Formules religieuses pour guider et protéger le défunt dans l’au-delà.',
    description:
        'Les Textes des pyramides puis les Textes des sarcophages rassemblent des formules, invocations et parcours symboliques. Ils structurent la renaissance du défunt.',
    keyPoints: [
      'Transmission écrite des croyances funéraires.',
      'Base importante des traditions ultérieures.',
    ],
  ),
  FuneralRite(
    id: 'mummification',
    name: 'Momification',
    period: 'Surtout Nouvel Empire et époques tardives',
    summary: 'Préserver le corps pour assurer la continuité de l’être.',
    description:
        'La momification combine purification, dessiccation, onctions, bandelettes et protection magique. Elle vise à conserver l’intégrité du corps pour la vie dans l’au-delà.',
    keyPoints: [
      'Rôle central des embaumeurs et prêtres.',
      'Amulettes et formules accompagnent la protection du corps.',
    ],
  ),
  FuneralRite(
    id: 'opening_mouth',
    name: 'Ouverture de la bouche',
    period: 'Époque pharaonique',
    summary: 'Rituel restituant symboliquement parole, souffle et perception.',
    description:
        'Ce rite est pratiqué sur la momie ou la statue funéraire. Il permet au défunt de “revivre” rituellement dans l’au-delà en retrouvant ses capacités essentielles.',
    keyPoints: [
      'Rituel clé des funérailles royales et élitaires.',
      'Montre le rôle actif des cérémonies dans la renaissance.',
    ],
  ),
  FuneralRite(
    id: 'book_of_dead',
    name: 'Livre des morts',
    period: 'Nouvel Empire - Basse époque',
    summary: 'Recueil de formules pour franchir les épreuves de l’au-delà.',
    description:
        'Copié sur papyrus et placé dans la tombe, le Livre des morts aide le défunt à passer les portes de l’au-delà, à se justifier et à rejoindre un état de paix.',
    keyPoints: [
      'Formules personnalisables selon le défunt.',
      'Inclut la célèbre pesée du cœur.',
    ],
  ),
  FuneralRite(
    id: 'hypogeum_tombs',
    name: 'Hypogées',
    period: 'Moyen Empire - Nouvel Empire',
    summary: 'Tombes creusées dans la roche pour élites et rois.',
    description:
        'Les hypogées remplacent progressivement les grandes superstructures pour certaines périodes. Leur décor peint ou gravé met en scène le voyage funéraire.',
    keyPoints: [
      'Architecture discrète en surface, riche en profondeur.',
      'Décors rituels très développés.',
    ],
  ),
  FuneralRite(
    id: 'valley_of_kings',
    name: 'Vallée des Rois',
    period: 'Nouvel Empire',
    summary: 'Nécropole royale thébaine avec tombes profondes décorées.',
    description:
        'Les pharaons du Nouvel Empire choisissent des tombes creusées dans la montagne pour mieux protéger leurs sépultures. Les parois illustrent les livres de l’au-delà.',
    keyPoints: [
      'Centre funéraire majeur de la royauté tardive.',
      'Décors religieux dédiés à la renaissance solaire et royale.',
    ],
  ),
  FuneralRite(
    id: 'valley_of_queens',
    name: 'Vallée des Reines',
    period: 'Nouvel Empire',
    summary: 'Nécropole de reines et princes, proche de Thèbes.',
    description:
        'Cette vallée accueille les tombes de grandes épouses royales et de membres de la famille royale. Certains tombeaux, comme celui de Néfertari, sont exceptionnellement décorés.',
    keyPoints: [
      'Complément de la Vallée des Rois.',
      'Patrimoine iconographique funéraire majeur.',
    ],
  ),
  FuneralRite(
    id: 'canopic_jars',
    name: 'Vases canopes',
    period: 'Surtout Nouvel Empire',
    summary: 'Récipients rituels pour conserver certains organes momifiés.',
    description:
        'Lors de la momification, certains organes sont traités séparément et placés dans des vases canopes. Ils sont protégés symboliquement par des divinités et intégrés au dispositif funéraire.',
    keyPoints: [
      'Association fréquente aux quatre fils d’Horus.',
      'Fonction rituelle de protection et de préservation.',
    ],
  ),
  FuneralRite(
    id: 'ushabtis',
    name: 'Ouchebtis (figurines funéraires)',
    period: 'Moyen Empire - Basse époque',
    summary: 'Petites statuettes déposées dans la tombe pour aider le défunt.',
    description:
        'Les ouchebtis sont des figurines inscrites de formules. Dans l’au-delà, elles sont censées répondre à la place du défunt pour les travaux demandés.',
    keyPoints: [
      'Présence massive dans de nombreuses tombes tardives.',
      'Expriment une vision organisée de la vie après la mort.',
    ],
  ),
  FuneralRite(
    id: 'amulets',
    name: 'Amulettes funéraires',
    period: 'Toute l’époque pharaonique',
    summary: 'Objets protecteurs placés dans les bandelettes ou le cercueil.',
    description:
        'Les amulettes (ankh, scarabée, œil oudjat, etc.) renforcent la protection magique du défunt. Leur position dans les bandelettes peut avoir une signification précise.',
    keyPoints: [
      'Protection symbolique du corps et des fonctions vitales.',
      'Lien fort entre iconographie et efficacité rituelle.',
    ],
  ),
  FuneralRite(
    id: 'heart_scarab',
    name: 'Scarabée de cœur',
    period: 'Nouvel Empire et époques tardives',
    summary: 'Amulette majeure destinée à protéger le défunt lors du jugement.',
    description:
        'Le scarabée de cœur porte souvent une formule demandant au cœur de ne pas témoigner contre son propriétaire à la pesée. Il illustre le lien entre morale et salut.',
    keyPoints: [
      'Objet clé de la préparation à la pesée du cœur.',
      'Association entre inscription et protection rituelle.',
    ],
  ),
  FuneralRite(
    id: 'funerary_mask',
    name: 'Masques funéraires',
    period: 'Nouvel Empire - période tardive',
    summary: 'Visages idéalisés pour garantir l’identité du défunt.',
    description:
        'Le masque funéraire permet d’identifier rituellement le défunt et de lui offrir une forme transfigurée. Il combine mémoire personnelle et modèle sacré.',
    keyPoints: [
      'Peut être en cartonnage, bois doré ou métaux précieux.',
      'Fonction identitaire et protectrice.',
    ],
  ),
  FuneralRite(
    id: 'ka_statues',
    name: 'Statues du ka',
    period: 'Ancien Empire - Moyen Empire',
    summary: 'Statues servant de support rituel à la présence du défunt.',
    description:
        'Si le corps est endommagé, la statue peut devenir un relais de présence pour le ka. Elle reçoit des offrandes dans la chapelle funéraire.',
    keyPoints: [
      'Rôle central dans les cultes d’offrandes.',
      'Complément rituel de la momie et de la tombe.',
    ],
  ),
  FuneralRite(
    id: 'false_door_offerings',
    name: 'Fausse porte et tables d’offrandes',
    period: 'Ancien Empire surtout',
    summary: 'Point de contact symbolique entre vivants et morts.',
    description:
        'La fausse porte, sculptée dans la chapelle, représente un passage rituel. Les familles y déposent pains, bière, viandes et encens pour nourrir le défunt dans l’au-delà.',
    keyPoints: [
      'Lieu rituel principal des visites funéraires.',
      'Assure la continuité des liens familiaux.',
    ],
  ),
  FuneralRite(
    id: 'procession_to_tomb',
    name: 'Procession funéraire',
    period: 'Époque pharaonique',
    summary: 'Cortège rituel depuis la maison jusqu’à la tombe.',
    description:
        'Le défunt est transporté en cortège avec prêtres, pleureuses, proches et porteurs d’offrandes. Cette procession met en scène la transition entre monde des vivants et monde des morts.',
    keyPoints: [
      'Rituel public à forte dimension sociale.',
      'Inclut lamentations, encensement et gestes codifiés.',
    ],
  ),
  FuneralRite(
    id: 'funerary_priests',
    name: 'Prêtres funéraires',
    period: 'Toute l’époque pharaonique',
    summary: 'Spécialistes des rites, de l’embaumement et des formules.',
    description:
        'Les prêtres accomplissent les séquences rituelles, récitent les formules et assurent l’entretien du culte funéraire. Leur action garantit la validité religieuse du passage.',
    keyPoints: [
      'Fonctions complémentaires: purification, lecture, offrande.',
      'Transmission technique et religieuse sur le long terme.',
    ],
  ),
  FuneralRite(
    id: 'mortuary_temples',
    name: 'Temples funéraires royaux',
    period: 'Ancien Empire - Nouvel Empire',
    summary:
        'Espaces de culte où la mémoire du roi est entretenue après sa mort.',
    description:
        'Distincts de la tombe, les temples funéraires accueillent prêtres, offrandes et cérémonies en l’honneur du pharaon défunt. Ils prolongent sa présence politique et religieuse.',
    keyPoints: [
      'Articulation entre pouvoir royal et religion.',
      'Rôle économique avec personnel, domaines et ateliers.',
    ],
  ),
  FuneralRite(
    id: 'deir_el_medina_tombs',
    name: 'Tombes de Deir el-Médina',
    period: 'Nouvel Empire',
    summary:
        'Tombes d’artisans royaux offrant une vision intime des croyances.',
    description:
        'Les artisans de la nécropole royale décorent leurs propres tombes avec des scènes funéraires détaillées. Elles montrent comment les rites royaux inspirent aussi les non-royaux.',
    keyPoints: [
      'Sources précieuses sur la religion vécue.',
      'Iconographie fine des livres de l’au-delà.',
    ],
  ),
  FuneralRite(
    id: 'animal_mummies',
    name: 'Momies animales votives',
    period: 'Basse époque - période ptolémaïque',
    summary: 'Animaux momifiés offerts aux dieux dans certains sanctuaires.',
    description:
        'Des millions de momies animales (ibis, chats, crocodiles...) sont déposées comme offrandes votives. Cette pratique reflète la force des cultes locaux et des pèlerinages.',
    keyPoints: [
      'Lien entre dévotion populaire et économie des temples.',
      'Pratique massive des périodes tardives.',
    ],
  ),
  FuneralRite(
    id: 'letters_to_dead',
    name: 'Lettres aux morts',
    period: 'Ancien et Moyen Empire',
    summary: 'Messages déposés pour demander aide ou arbitrage aux ancêtres.',
    description:
        'Des proches écrivent aux défunts sur des bols, stèles ou papyrus pour solliciter protection, guérison ou justice. Les morts restent des acteurs de la vie sociale.',
    keyPoints: [
      'Montre la proximité entre vivants et ancêtres.',
      'Source directe des préoccupations quotidiennes.',
    ],
  ),
  FuneralRite(
    id: 'necropolis_economy',
    name: 'Économie des nécropoles',
    period: 'Toute l’époque pharaonique',
    summary: 'Artisans, prêtres et domaines agricoles soutiennent les rites.',
    description:
        'Les complexes funéraires mobilisent tailleurs de pierre, peintres, scribes, embaumeurs, bateliers et prêtres. Les cultes des morts reposent aussi sur des ressources économiques durables.',
    keyPoints: [
      'Le funéraire est aussi un système social et économique.',
      'Entretien à long terme des tombes et des cultes.',
    ],
  ),
];
