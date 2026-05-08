import '../models/historical_period.dart';
import '../models/timeline_event.dart';

const historyData = [
  HistoricalPeriod(
    name: 'Période prédynastique',
    dateRange: 'avant c. 3100 av. J.-C.',
    description:
        'Formation progressive des royaumes de Haute et Basse Égypte avant l’unification.',
  ),
  HistoricalPeriod(
    name: 'Ancien Empire',
    dateRange: 'c. 2686-2181 av. J.-C.',
    description:
        'Période des grandes pyramides, d’une administration centralisée et d’une forte mise en scène du pouvoir pharaonique.',
  ),
  HistoricalPeriod(
    name: 'Moyen Empire',
    dateRange: 'c. 2055-1650 av. J.-C.',
    description:
        'Temps de réunification et de renouveau culturel. Les textes littéraires et les politiques d’aménagement se développent.',
  ),
  HistoricalPeriod(
    name: 'Nouvel Empire',
    dateRange: 'c. 1550-1069 av. J.-C.',
    description:
        'Apogée militaire et diplomatique. L’Égypte rayonne grâce à de grands pharaons, des temples majeurs et des échanges internationaux.',
  ),
  HistoricalPeriod(
    name: 'Troisième Période intermédiaire',
    dateRange: 'c. 1069-664 av. J.-C.',
    description:
        'Période de recompositions politiques entre pouvoirs régionaux et influences extérieures.',
  ),
  HistoricalPeriod(
    name: 'Basse époque',
    dateRange: 'c. 664-332 av. J.-C.',
    description:
        'Période d’adaptations politiques et d’influences extérieures, tout en conservant des traditions religieuses profondes.',
  ),
  HistoricalPeriod(
    name: 'Période ptolémaïque',
    dateRange: '332-30 av. J.-C.',
    description:
        'Dynastie lagide installée après Alexandre, avec Alexandrie comme grand centre culturel.',
  ),
  HistoricalPeriod(
    name: 'Période romaine',
    dateRange: 'à partir de 30 av. J.-C.',
    description:
        'L’Égypte devient province romaine après la mort de Cléopâtre VII.',
  ),
];

const timelineData = [
  TimelineEvent(
    date: 'c. 4000-3200 av. J.-C.',
    title: 'Cultures prédynastiques',
    description:
        'Développement de centres régionaux et premiers symboles du pouvoir.',
  ),
  TimelineEvent(
    date: 'c. 3400-3200 av. J.-C.',
    title: 'Naqada II et échanges',
    description:
        'Les échanges avec le Levant et la Nubie s’intensifient, préparant l’unification.',
  ),
  TimelineEvent(
    date: 'c. 3200-3100 av. J.-C.',
    title: 'Naqada III et proto-royaume',
    description:
        'Les élites royales se structurent, avec des symboles du pouvoir de plus en plus visibles.',
  ),
  TimelineEvent(
    date: 'c. 3100 av. J.-C.',
    title: 'Unification de l’Égypte',
    description: 'Le roi Narmer unit la Haute et la Basse Égypte.',
  ),
  TimelineEvent(
    date: 'c. 3000-2700 av. J.-C.',
    title: 'Premières dynasties',
    description:
        'Mise en place de l’État pharaonique et des institutions royales.',
  ),
  TimelineEvent(
    date: 'c. 2900-2700 av. J.-C.',
    title: 'Nécropoles royales d’Abydos et Saqqarah',
    description:
        'Les tombes royales et élitaires structurent les grands centres funéraires du royaume.',
  ),
  TimelineEvent(
    date: 'c. 2950 av. J.-C.',
    title: 'Memphis devient un centre majeur',
    description:
        'La région memphite s’impose comme cœur politique et administratif du royaume.',
  ),
  TimelineEvent(
    date: 'c. 2667-2648 av. J.-C.',
    title: 'Pyramide à degrés de Djéser',
    description: 'Saqqarah marque un tournant architectural majeur.',
  ),
  TimelineEvent(
    date: 'c. 2600 av. J.-C.',
    title: 'Complexes funéraires monumentaux',
    description:
        'Le culte royal se développe autour de vastes complexes et de temples funéraires.',
  ),
  TimelineEvent(
    date: 'c. 2580-2500 av. J.-C.',
    title: 'Âge des pyramides de Gizeh',
    description: 'Construction des grandes pyramides sous l’Ancien Empire.',
  ),
  TimelineEvent(
    date: 'c. 2500 av. J.-C.',
    title: 'Grand Sphinx de Gizeh',
    description:
        'Monument emblématique associé au complexe royal de la IVe dynastie.',
  ),
  TimelineEvent(
    date: 'c. 2490-2350 av. J.-C.',
    title: 'Expansion des cultes solaires',
    description:
        'Les rois de la Ve dynastie valorisent les sanctuaires liés au dieu Rê.',
  ),
  TimelineEvent(
    date: 'c. 2400-2300 av. J.-C.',
    title: 'Textes administratifs et gouverneurs locaux',
    description:
        'Les sources montrent une administration complexe et un rôle croissant des élites provinciales.',
  ),
  TimelineEvent(
    date: 'c. 2181 av. J.-C.',
    title: 'Fin de l’Ancien Empire',
    description: 'Affaiblissement du pouvoir central et crise politique.',
  ),
  TimelineEvent(
    date: 'c. 2181-2055 av. J.-C.',
    title: 'Première Période intermédiaire',
    description: 'Pouvoir fragmenté entre plusieurs centres régionaux.',
  ),
  TimelineEvent(
    date: 'c. 2100 av. J.-C.',
    title: 'Montée de Thèbes',
    description:
        'Les souverains thébains s’imposent progressivement dans la réunification du pays.',
  ),
  TimelineEvent(
    date: 'c. 2055 av. J.-C.',
    title: 'Réunification par Montouhotep II',
    description: 'Début du Moyen Empire et retour de la stabilité.',
  ),
  TimelineEvent(
    date: 'c. 1980-1900 av. J.-C.',
    title: 'Consolidation de la frontière nubienne',
    description:
        'Forteresses et contrôle du Nil au sud pour sécuriser les échanges et les ressources.',
  ),
  TimelineEvent(
    date: 'c. 1991 av. J.-C.',
    title: 'Nouvelle capitale à Itjtaouy',
    description:
        'Les souverains du Moyen Empire réorganisent l’administration autour du Fayoum.',
  ),
  TimelineEvent(
    date: 'c. 1970-1800 av. J.-C.',
    title: 'Essor du Moyen Empire',
    description: 'Renforcement administratif, économique et littéraire.',
  ),
  TimelineEvent(
    date: 'c. 1900-1750 av. J.-C.',
    title: 'Diffusion des textes sapientiaux',
    description:
        'Les œuvres littéraires et morales du Moyen Empire marquent durablement la culture égyptienne.',
  ),
  TimelineEvent(
    date: 'c. 1870-1800 av. J.-C.',
    title: 'Aménagement du Fayoum',
    description:
        'Grands travaux hydrauliques et agricoles dans la région du Fayoum.',
  ),
  TimelineEvent(
    date: 'c. 1800-1700 av. J.-C.',
    title: 'Transitions du Moyen vers le Second Intermédiaire',
    description: 'Le pouvoir central s’affaiblit progressivement.',
  ),
  TimelineEvent(
    date: 'c. 1650-1550 av. J.-C.',
    title: 'Présence des Hyksôs',
    description: 'Pouvoirs étrangers installés dans le Delta.',
  ),
  TimelineEvent(
    date: 'c. 1600 av. J.-C.',
    title: 'Avaris, capitale hyksôs',
    description:
        'Le Delta oriental devient un centre politique important du Second Intermédiaire.',
  ),
  TimelineEvent(
    date: 'c. 1570-1550 av. J.-C.',
    title: 'Campagnes thébaines de libération',
    description:
        'Les princes de Thèbes reprennent le nord et préparent la réunification.',
  ),
  TimelineEvent(
    date: 'c. 1550 av. J.-C.',
    title: 'Début du Nouvel Empire',
    description:
        'Ahmôsis Ier réunifie le pays et lance une période d’expansion.',
  ),
  TimelineEvent(
    date: 'c. 1530-1500 av. J.-C.',
    title: 'Réorganisation des temples d’Amon',
    description:
        'Le clergé thébain prend une place centrale dans l’idéologie du pouvoir royal.',
  ),
  TimelineEvent(
    date: 'c. 1500-1450 av. J.-C.',
    title: 'Construction et commerce sous Hatchepsout',
    description:
        'Expéditions commerciales (Pount) et programmes monumentaux majeurs.',
  ),
  TimelineEvent(
    date: 'c. 1479-1425 av. J.-C.',
    title: 'Apogée sous Hatchepsout et Thoutmôsis III',
    description: 'Grandes constructions, commerce et campagnes militaires.',
  ),
  TimelineEvent(
    date: 'c. 1450-1400 av. J.-C.',
    title: 'Empire égyptien au Levant',
    description:
        'Le Nouvel Empire contrôle de vastes territoires et routes stratégiques.',
  ),
  TimelineEvent(
    date: 'c. 1400-1350 av. J.-C.',
    title: 'Âge diplomatique international',
    description:
        'Les échanges de lettres et cadeaux royaux relient l’Égypte aux grandes puissances du Proche-Orient.',
  ),
  TimelineEvent(
    date: 'c. 1353-1336 av. J.-C.',
    title: 'Réforme d’Akhenaton',
    description: 'Culte d’Aton et fondation d’Akhetaton.',
  ),
  TimelineEvent(
    date: 'c. 1330 av. J.-C.',
    title: 'Retour aux cultes traditionnels',
    description:
        'Après Amarna, les sanctuaires traditionnels retrouvent leur place centrale.',
  ),
  TimelineEvent(
    date: 'c. 1332-1323 av. J.-C.',
    title: 'Règne de Toutânkhamon',
    description: 'Rétablissement des cultes traditionnels.',
  ),
  TimelineEvent(
    date: 'c. 1323-1292 av. J.-C.',
    title: 'Transition post-amarnienne',
    description:
        'Les règnes d’Ay et Horemheb stabilisent le royaume avant la XIXe dynastie.',
  ),
  TimelineEvent(
    date: 'c. 1295-1279 av. J.-C.',
    title: 'Séthi Ier et renforcement du royaume',
    description:
        'Reprise de l’influence militaire et grands chantiers religieux.',
  ),
  TimelineEvent(
    date: 'c. 1279-1213 av. J.-C.',
    title: 'Règne de Ramsès II',
    description:
        'Période monumentale, diplomatie internationale et grands temples.',
  ),
  TimelineEvent(
    date: 'c. 1244 av. J.-C.',
    title: 'Abou Simbel achevé',
    description:
        'Les temples rupestres deviennent l’un des grands symboles du programme ramesside.',
  ),
  TimelineEvent(
    date: 'c. 1258 av. J.-C.',
    title: 'Traité de paix égypto-hittite',
    description:
        'L’un des plus anciens traités de paix connus est conclu après Qadesh.',
  ),
  TimelineEvent(
    date: 'c. 1186-1155 av. J.-C.',
    title: 'Ramsès III et dernières grandes défenses',
    description: 'Résistance aux menaces extérieures, puis déclin progressif.',
  ),
  TimelineEvent(
    date: 'c. 1150 av. J.-C.',
    title: 'Crises économiques et sociales',
    description:
        'Hausse des tensions internes, difficultés d’approvisionnement et affaiblissement du pouvoir central.',
  ),
  TimelineEvent(
    date: 'c. 1177 av. J.-C.',
    title: 'Crises de la fin de l’âge du Bronze',
    description:
        'Conflits et ruptures des réseaux méditerranéens touchent la région.',
  ),
  TimelineEvent(
    date: 'c. 1069 av. J.-C.',
    title: 'Fin du Nouvel Empire',
    description: 'Entrée dans la Troisième Période intermédiaire.',
  ),
  TimelineEvent(
    date: 'c. 1069-945 av. J.-C.',
    title: 'Pouvoirs de Tanis et de Thèbes',
    description:
        'Partage de l’autorité entre dynasties du nord et clergé d’Amon au sud.',
  ),
  TimelineEvent(
    date: 'c. 1000 av. J.-C.',
    title: 'Réseaux religieux régionaux',
    description:
        'Les sanctuaires locaux jouent un rôle croissant dans la vie politique et économique.',
  ),
  TimelineEvent(
    date: 'c. 945-715 av. J.-C.',
    title: 'Dynasties d’origine libyenne',
    description:
        'Nouvelles familles royales gouvernent l’Égypte depuis le Delta.',
  ),
  TimelineEvent(
    date: 'c. 747-664 av. J.-C.',
    title: 'Dynasties libyennes et kouchites',
    description:
        'Pluralité de pouvoirs et influences africaines et proche-orientales.',
  ),
  TimelineEvent(
    date: 'c. 730-700 av. J.-C.',
    title: 'Unification kouchite',
    description:
        'Les rois napatéens réunissent une grande partie de la vallée du Nil sous leur autorité.',
  ),
  TimelineEvent(
    date: '671-663 av. J.-C.',
    title: 'Interventions assyriennes',
    description: 'L’Assyrie mène plusieurs campagnes en Égypte.',
  ),
  TimelineEvent(
    date: 'c. 664 av. J.-C.',
    title: 'Renaissance saïte',
    description:
        'Psammétique Ier restaure l’unité et relance la culture classique.',
  ),
  TimelineEvent(
    date: 'c. 610-595 av. J.-C.',
    title: 'Règne de Néchao II',
    description: 'Politique maritime et campagnes vers le Levant.',
  ),
  TimelineEvent(
    date: 'c. 570-526 av. J.-C.',
    title: 'Prosperité sous Amasis II',
    description:
        'Dynamisme économique et ouverture méditerranéenne avant la conquête perse.',
  ),
  TimelineEvent(
    date: 'c. 560-530 av. J.-C.',
    title: 'Naucratis et commerce grec',
    description:
        'Le port de Naucratis devient un point majeur d’échanges entre l’Égypte et le monde grec.',
  ),
  TimelineEvent(
    date: '525 av. J.-C.',
    title: 'Conquête perse',
    description: 'L’Égypte passe sous domination achéménide.',
  ),
  TimelineEvent(
    date: 'c. 486-404 av. J.-C.',
    title: 'Révoltes contre la Perse',
    description:
        'Plusieurs soulèvements égyptiens contestent la domination achéménide.',
  ),
  TimelineEvent(
    date: '404-343 av. J.-C.',
    title: 'Dernières indépendances égyptiennes',
    description: 'Brèves restaurations autochtones avant le retour perse.',
  ),
  TimelineEvent(
    date: '343 av. J.-C.',
    title: 'Seconde domination perse',
    description: 'Retour des Perses jusqu’à l’arrivée d’Alexandre.',
  ),
  TimelineEvent(
    date: '332-323 av. J.-C.',
    title: 'Règne d’Alexandre en Égypte',
    description:
        'Alexandre est reconnu comme pharaon et réorganise le pays dans le cadre hellénistique.',
  ),
  TimelineEvent(
    date: '332 av. J.-C.',
    title: 'Arrivée d’Alexandre le Grand',
    description: 'Début de la période hellénistique en Égypte.',
  ),
  TimelineEvent(
    date: '331 av. J.-C.',
    title: 'Fondation d’Alexandrie',
    description:
        'La nouvelle cité devient un centre politique, commercial et culturel majeur.',
  ),
  TimelineEvent(
    date: '305 av. J.-C.',
    title: 'Début de la dynastie ptolémaïque',
    description: 'Les Lagides règnent depuis Alexandrie.',
  ),
  TimelineEvent(
    date: 'c. 280 av. J.-C.',
    title: 'Phare d’Alexandrie',
    description:
        'Le phare devient un repère maritime majeur et un symbole du prestige lagide.',
  ),
  TimelineEvent(
    date: 'IIIe-IIe s. av. J.-C.',
    title: 'Alexandrie, capitale du savoir',
    description:
        'La ville rayonne avec ses bibliothèques, savants et échanges méditerranéens.',
  ),
  TimelineEvent(
    date: '196 av. J.-C.',
    title: 'Décret de Memphis (Pierre de Rosette)',
    description:
        'Texte trilingue majeur pour la future compréhension des hiéroglyphes.',
  ),
  TimelineEvent(
    date: '168 av. J.-C.',
    title: 'Pressions romaines croissantes',
    description:
        'Rome influence de plus en plus les affaires politiques de la Méditerranée orientale.',
  ),
  TimelineEvent(
    date: '51-30 av. J.-C.',
    title: 'Règne de Cléopâtre VII',
    description:
        'Dernière grande reine lagide, entre diplomatie locale et enjeux romains.',
  ),
  TimelineEvent(
    date: '31 av. J.-C.',
    title: 'Bataille d’Actium',
    description: 'Défaite de Cléopâtre VII et Marc Antoine face à Octave.',
  ),
  TimelineEvent(
    date: '30 av. J.-C.',
    title: 'Fin de l’Égypte pharaonique',
    description: 'Après Cléopâtre VII, l’Égypte devient province romaine.',
  ),
  TimelineEvent(
    date: 'Ier-IIIe s. apr. J.-C.',
    title: 'Égypte romaine',
    description:
        'Le pays reste stratégique pour l’approvisionnement en blé de l’Empire romain.',
  ),
  TimelineEvent(
    date: '391 apr. J.-C.',
    title: 'Fin progressive des cultes antiques officiels',
    description:
        'Les transformations religieuses de l’Empire romain modifient profondément les temples égyptiens.',
  ),
  TimelineEvent(
    date: '1799 apr. J.-C.',
    title: 'Redécouverte de la Pierre de Rosette',
    description:
        'Découverte majeure qui ouvre la voie au déchiffrement des hiéroglyphes.',
  ),
  TimelineEvent(
    date: '1822 apr. J.-C.',
    title: 'Champollion déchiffre les hiéroglyphes',
    description:
        'Naissance de l’égyptologie moderne grâce à la lecture du système hiéroglyphique.',
  ),
];

const pharaohTimelineData = [
  TimelineEvent(
    date: 'c. 3100 av. J.-C.',
    title: 'Narmer (Ménès)',
    description:
        'Traditionnellement associé à l’unification de la Haute et de la Basse Égypte.',
  ),
  TimelineEvent(
    date: 'c. 3050-3007 av. J.-C.',
    title: 'Hor-Aha',
    description: 'Premier souverain de la Ire dynastie après l’unification.',
  ),
  TimelineEvent(
    date: 'c. 3000-2950 av. J.-C.',
    title: 'Djer',
    description:
        'Roi des premières dynasties, consolidation de l’État thinite.',
  ),
  TimelineEvent(
    date: 'c. 2950-2900 av. J.-C.',
    title: 'Djet',
    description:
        'Souverain de la Ire dynastie, continuité des institutions royales.',
  ),
  TimelineEvent(
    date: 'c. 2900-2850 av. J.-C.',
    title: 'Den',
    description:
        'Roi marquant des débuts dynastiques, affirmation du pouvoir pharaonique.',
  ),
  TimelineEvent(
    date: 'c. 2686-2613 av. J.-C.',
    title: 'Snéfrou',
    description:
        'Père de Khéops, grand bâtisseur (pyramides de Meïdoum et Dahchour).',
  ),
  TimelineEvent(
    date: 'c. 2667-2648 av. J.-C.',
    title: 'Djéser',
    description:
        'Pharaon de la IIIe dynastie, lié à la pyramide à degrés de Saqqarah.',
  ),
  TimelineEvent(
    date: 'c. 2589-2566 av. J.-C.',
    title: 'Khéops (Khufu)',
    description:
        'Commande la Grande Pyramide de Gizeh, monument majeur de l’Ancien Empire.',
  ),
  TimelineEvent(
    date: 'c. 2566-2558 av. J.-C.',
    title: 'Djédefrê',
    description: 'Successeur de Khéops, règne durant la IVe dynastie.',
  ),
  TimelineEvent(
    date: 'c. 2558-2532 av. J.-C.',
    title: 'Khéphren (Khafre)',
    description:
        'Pharaon de Gizeh, souvent associé au Sphinx dans la tradition historique.',
  ),
  TimelineEvent(
    date: 'c. 2532-2503 av. J.-C.',
    title: 'Mykérinos (Menkaourê)',
    description: 'Constructeur de la troisième grande pyramide de Gizeh.',
  ),
  TimelineEvent(
    date: 'c. 2494-2345 av. J.-C.',
    title: 'Pépi II',
    description: 'Très long règne à la fin de l’Ancien Empire.',
  ),
  TimelineEvent(
    date: 'c. 2332-2283 av. J.-C.',
    title: 'Pépi Ier',
    description:
        'Règne important de la VIe dynastie, expansion des échanges au sud.',
  ),
  TimelineEvent(
    date: 'c. 2055-2004 av. J.-C.',
    title: 'Montouhotep II',
    description: 'Réunifie le pays et ouvre le Moyen Empire.',
  ),
  TimelineEvent(
    date: 'c. 1971-1926 av. J.-C.',
    title: 'Sésostris Ier',
    description: 'Figure importante du Moyen Empire et du renouveau politique.',
  ),
  TimelineEvent(
    date: 'c. 1878-1839 av. J.-C.',
    title: 'Sésostris III',
    description:
        'Roi puissant du Moyen Empire, réformes administratives et militaires.',
  ),
  TimelineEvent(
    date: 'c. 1841-1792 av. J.-C.',
    title: 'Amenemhat III',
    description:
        'Règne de prospérité et de grands travaux hydrauliques au Fayoum.',
  ),
  TimelineEvent(
    date: 'c. 1806-1802 av. J.-C.',
    title: 'Sobeknéferou (reine-pharaon)',
    description:
        'Dernière souveraine de la XIIe dynastie, figure féminine majeure du Moyen Empire.',
  ),
  TimelineEvent(
    date: 'c. 1650-1550 av. J.-C.',
    title: 'Période des Hyksôs',
    description:
        'Pouvoirs étrangers dans le Delta avant la réunification du Nouvel Empire.',
  ),
  TimelineEvent(
    date: 'c. 1550-1525 av. J.-C.',
    title: 'Ahmôsis Ier',
    description:
        'Fondateur de la XVIIIe dynastie, ouvre la période du Nouvel Empire.',
  ),
  TimelineEvent(
    date: 'c. 1549-1524 av. J.-C.',
    title: 'Ahmès-Néfertary (Grande reine)',
    description:
        'Grande épouse royale et figure religieuse majeure des débuts du Nouvel Empire.',
  ),
  TimelineEvent(
    date: 'c. 1506-1493 av. J.-C.',
    title: 'Thoutmôsis Ier',
    description: 'Renforce l’expansion militaire au sud comme au nord.',
  ),
  TimelineEvent(
    date: 'c. 1479-1458 av. J.-C.',
    title: 'Hatchepsout',
    description:
        'Grande souveraine bâtisseuse, développement économique et monumental.',
  ),
  TimelineEvent(
    date: 'c. 1479-1425 av. J.-C.',
    title: 'Thoutmôsis III',
    description: 'Conquérant majeur du Nouvel Empire, expansion au Levant.',
  ),
  TimelineEvent(
    date: 'c. 1390-1353 av. J.-C.',
    title: 'Amenhotep III',
    description: 'Règne prestigieux marqué par la diplomatie et les arts.',
  ),
  TimelineEvent(
    date: 'c. 1390-1353 av. J.-C.',
    title: 'Tiyi (Grande épouse royale)',
    description:
        'Reine influente du règne d’Amenhotep III, active dans la diplomatie et la cour.',
  ),
  TimelineEvent(
    date: 'c. 1353-1336 av. J.-C.',
    title: 'Akhenaton',
    description:
        'Réforme religieuse centrée sur Aton et fondation d’Akhetaton.',
  ),
  TimelineEvent(
    date: 'c. 1350 av. J.-C.',
    title: 'Néfertiti',
    description:
        'Reine emblématique de la période amarnienne, associée au culte d’Aton.',
  ),
  TimelineEvent(
    date: 'c. 1332-1323 av. J.-C.',
    title: 'Toutânkhamon',
    description:
        'Jeune pharaon célèbre, restauration des cultes traditionnels.',
  ),
  TimelineEvent(
    date: 'c. 1323-1295 av. J.-C.',
    title: 'Ay et Horemheb',
    description: 'Transition dynastique avant la période ramesside.',
  ),
  TimelineEvent(
    date: 'c. 1294-1279 av. J.-C.',
    title: 'Séthi Ier',
    description: 'Roi bâtisseur, prépare l’apogée ramesside.',
  ),
  TimelineEvent(
    date: 'c. 1279-1213 av. J.-C.',
    title: 'Ramsès II',
    description:
        'Règne long et prestigieux, monuments majeurs comme Abou Simbel.',
  ),
  TimelineEvent(
    date: 'c. 1279-1213 av. J.-C.',
    title: 'Néfertari (Grande épouse royale)',
    description:
        'Épouse de Ramsès II, connue pour son tombeau remarquable dans la Vallée des Reines.',
  ),
  TimelineEvent(
    date: 'c. 1213-1203 av. J.-C.',
    title: 'Mérenptah',
    description: 'Successeur de Ramsès II, campagnes défensives importantes.',
  ),
  TimelineEvent(
    date: 'c. 1203-1197 av. J.-C.',
    title: 'Séthi II',
    description:
        'Roi de la fin de la XIXe dynastie dans une période de tensions politiques.',
  ),
  TimelineEvent(
    date: 'c. 1186-1155 av. J.-C.',
    title: 'Ramsès III',
    description:
        'Dernier grand souverain du Nouvel Empire, défense du royaume.',
  ),
  TimelineEvent(
    date: 'c. 1155-1069 av. J.-C.',
    title: 'Ramsès IV à XI',
    description:
        'Affaiblissement progressif du pouvoir central en fin de Nouvel Empire.',
  ),
  TimelineEvent(
    date: 'c. 1191-1189 av. J.-C.',
    title: 'Taousert (reine-pharaon)',
    description:
        'Souveraine de la fin de la XIXe dynastie, avant les recompositions du début de la XXe.',
  ),
  TimelineEvent(
    date: 'c. 747-716 av. J.-C.',
    title: 'Piye (dynastie kouchite)',
    description: 'Roi de Napata qui impose son autorité sur l’Égypte.',
  ),
  TimelineEvent(
    date: 'c. 743-712 av. J.-C.',
    title: 'Chépénoupet II (Divine adoratrice)',
    description:
        'Grande figure religieuse thébaine liée aux équilibres politiques de la XXVe dynastie.',
  ),
  TimelineEvent(
    date: 'c. 690-664 av. J.-C.',
    title: 'Taharqa',
    description: 'Souverain kouchite majeur face aux offensives assyriennes.',
  ),
  TimelineEvent(
    date: 'c. 664-610 av. J.-C.',
    title: 'Psammétique Ier',
    description:
        'Fondateur de la XXVIe dynastie, réunification et renaissance saïte.',
  ),
  TimelineEvent(
    date: 'c. 610-595 av. J.-C.',
    title: 'Néchao II',
    description:
        'Pharaon connu pour ses expéditions et son ouverture maritime.',
  ),
  TimelineEvent(
    date: 'c. 570-526 av. J.-C.',
    title: 'Amasis II',
    description: 'Règne de prospérité avant la conquête perse.',
  ),
  TimelineEvent(
    date: 'c. 380-362 av. J.-C.',
    title: 'Nectanébo Ier',
    description:
        'Roi de la XXXe dynastie, restaurations monumentales et reprise politique égyptienne.',
  ),
  TimelineEvent(
    date: 'c. 360-343 av. J.-C.',
    title: 'Nectanébo II',
    description:
        'Dernier pharaon autochtone avant le retour de la domination perse.',
  ),
  TimelineEvent(
    date: '525 av. J.-C.',
    title: 'Conquête perse (Cambyse II)',
    description: 'Début de la domination achéménide sur l’Égypte.',
  ),
  TimelineEvent(
    date: '404-343 av. J.-C.',
    title: 'Dernières dynasties autochtones',
    description: 'Brèves restaurations égyptiennes avant le retour des Perses.',
  ),
  TimelineEvent(
    date: '332 av. J.-C.',
    title: 'Alexandre le Grand',
    description: 'Prise de l’Égypte, ouverture de la période hellénistique.',
  ),
  TimelineEvent(
    date: '305-30 av. J.-C.',
    title: 'Dynastie lagide (Ptolémées)',
    description: 'Dynastie d’origine macédonienne régnant depuis Alexandrie.',
  ),
  TimelineEvent(
    date: '246-222 av. J.-C.',
    title: 'Ptolémée III Évergète',
    description:
        'Roi lagide de l’apogée ptolémaïque, puissance diplomatique et militaire.',
  ),
  TimelineEvent(
    date: '180-145 av. J.-C.',
    title: 'Ptolémée VI Philométor',
    description:
        'Roi lagide marquant du IIe siècle av. J.-C. dans un contexte méditerranéen instable.',
  ),
  TimelineEvent(
    date: '51-30 av. J.-C.',
    title: 'Cléopâtre VII',
    description:
        'Dernière souveraine lagide, fin de l’indépendance égyptienne.',
  ),
];

const abydosTimelineData = [
  TimelineEvent(
    date: 'Abydos n°1',
    title: 'Menes (Meni)',
    description: 'Début de la liste d’Abydos (Temple de Séthi Ier).',
  ),
  TimelineEvent(
    date: 'Abydos n°2',
    title: 'Hor-Aha (Teti)',
    description: 'Ire dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°3',
    title: 'Djer (Iti)',
    description: 'Ire dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°4',
    title: 'Djet (Ita)',
    description: 'Ire dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°5',
    title: 'Den (Septi)',
    description: 'Ire dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°6',
    title: 'Anedjib (Meribiap)',
    description: 'Ire dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°7',
    title: 'Semerkhet (Semsu)',
    description: 'Ire dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°8',
    title: 'Qa’a (Qebeh)',
    description: 'Ire dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°9',
    title: 'Hotepsekhemwy (Bedjau)',
    description: 'IIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°10',
    title: 'Nebra (Kakau)',
    description: 'IIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°11',
    title: 'Nynetjer (Banetjer)',
    description: 'IIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°12',
    title: 'Weneg (Wadjnas)',
    description: 'IIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°13',
    title: 'Senedj (Sendi)',
    description: 'IIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°14',
    title: 'Khasekhemwy (Djadjay)',
    description: 'IIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°15',
    title: 'Nebka',
    description: 'IIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°16',
    title: 'Djoser (Djeser-za)',
    description: 'IIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°17',
    title: 'Sekhemkhet (Teti)',
    description: 'IIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°18',
    title: 'Khaba (Sedjes)',
    description: 'IIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°19',
    title: 'Huni (Neferkare)',
    description: 'IIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°20',
    title: 'Sneferu',
    description: 'IVe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°21',
    title: 'Khufu',
    description: 'IVe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°22',
    title: 'Djedefre',
    description: 'IVe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°23',
    title: 'Khafre',
    description: 'IVe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°24',
    title: 'Menkaure',
    description: 'IVe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°25',
    title: 'Shepseskaf',
    description: 'IVe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°26',
    title: 'Userkaf',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°27',
    title: 'Sahure',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°28',
    title: 'Neferirkare Kakai',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°29',
    title: 'Neferefre',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°30',
    title: 'Nyuserre',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°31',
    title: 'Menkauhor',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°32',
    title: 'Djedkare',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°33',
    title: 'Unas',
    description: 'Ve dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°34',
    title: 'Teti',
    description: 'VIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°35',
    title: 'Userkare',
    description: 'VIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°36',
    title: 'Pepi I Meryre',
    description: 'VIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°37',
    title: 'Merenre I',
    description: 'VIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°38',
    title: 'Pepi II Neferkare',
    description: 'VIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°39',
    title: 'Merenre II Nemtyemsaf',
    description: 'VIe dynastie (fin).',
  ),
  TimelineEvent(
    date: 'Abydos n°40',
    title: 'Netjerkare Siptah',
    description: 'Transition vers VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°41',
    title: 'Menkare',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°42',
    title: 'Neferkare II',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°43',
    title: 'Neferkare Neby',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°44',
    title: 'Djedkare Shemai',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°45',
    title: 'Neferkare Khendu',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°46',
    title: 'Merenhor',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°47',
    title: 'Neferkamin (Sneferka)',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°48',
    title: 'Nikare',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°49',
    title: 'Neferkare Tereru',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°50',
    title: 'Neferkahor',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°51',
    title: 'Neferkare Pepiseneb',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°52',
    title: 'Neferkamin Anu',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°53',
    title: 'Qakare Ibi',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°54',
    title: 'Neferkaure',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°55',
    title: 'Neferkauhor',
    description: 'VIIe/VIIIe dynasties.',
  ),
  TimelineEvent(
    date: 'Abydos n°56',
    title: 'Neferirkare',
    description: 'VIIe/VIIIe dynasties (fin de série fragmentaire).',
  ),
  TimelineEvent(
    date: 'Abydos n°57',
    title: 'Mentouhotep II (Nebhepetre)',
    description: 'XIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°58',
    title: 'Mentouhotep III (Sankhkare)',
    description: 'XIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°59',
    title: 'Amenemhat I (Sehetepibre)',
    description: 'XIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°60',
    title: 'Senusret I (Kheperkare)',
    description: 'XIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°61',
    title: 'Amenemhat II (Nubkaure)',
    description: 'XIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°62',
    title: 'Senusret II (Khakheperre)',
    description: 'XIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°63',
    title: 'Senusret III (Khakaure)',
    description: 'XIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°64',
    title: 'Amenemhat III (Nimaatre)',
    description: 'XIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°65',
    title: 'Amenemhat IV (Maakherure)',
    description: 'XIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°66',
    title: 'Ahmose I (Nebpehtire)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°67',
    title: 'Amenhotep I (Djeserkare)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°68',
    title: 'Thutmose I (Aakheperkare)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°69',
    title: 'Thutmose II (Aakheperenre)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°70',
    title: 'Thutmose III (Menkheperre)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°71',
    title: 'Amenhotep II (Aakheperure)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°72',
    title: 'Thutmose IV (Menkheperure)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°73',
    title: 'Amenhotep III (Nebmaatre)',
    description: 'XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°74',
    title: 'Horemheb',
    description: 'Fin de la XVIIIe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°75',
    title: 'Ramesses I (Menpehtire)',
    description: 'Début XIXe dynastie.',
  ),
  TimelineEvent(
    date: 'Abydos n°76',
    title: 'Seti I (Menmaatre)',
    description: 'Roi commanditaire de la liste d’Abydos.',
  ),
];
