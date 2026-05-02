import '../models/historical_period.dart';
import '../models/timeline_event.dart';

const historyData = [
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
    name: 'Basse époque',
    dateRange: 'c. 664-332 av. J.-C.',
    description:
        'Période d’adaptations politiques et d’influences extérieures, tout en conservant des traditions religieuses profondes.',
  ),
];

const timelineData = [
  TimelineEvent(
    date: 'c. 3100 av. J.-C.',
    title: 'Unification de l’Égypte',
    description: 'Le roi Narmer unit la Haute et la Basse Égypte.',
  ),
  TimelineEvent(
    date: 'c. 2580 av. J.-C.',
    title: 'Pyramides de Gizeh',
    description: 'Construction des grandes pyramides sous l’Ancien Empire.',
  ),
  TimelineEvent(
    date: 'c. 1330 av. J.-C.',
    title: 'Règne de Toutânkhamon',
    description: 'Rétablissement des cultes traditionnels après Akhenaton.',
  ),
  TimelineEvent(
    date: '332 av. J.-C.',
    title: 'Arrivée d’Alexandre le Grand',
    description: 'Début de la période hellénistique en Égypte.',
  ),
  TimelineEvent(
    date: '30 av. J.-C.',
    title: 'Fin de l’Égypte pharaonique',
    description: 'Après Cléopâtre VII, l’Égypte devient province romaine.',
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
    date: 'c. 1550-1525 av. J.-C.',
    title: 'Ahmôsis Ier',
    description:
        'Fondateur de la XVIIIe dynastie, ouvre la période du Nouvel Empire.',
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
    date: 'c. 1353-1336 av. J.-C.',
    title: 'Akhenaton',
    description:
        'Réforme religieuse centrée sur Aton et fondation d’Akhetaton.',
  ),
  TimelineEvent(
    date: 'c. 1332-1323 av. J.-C.',
    title: 'Toutânkhamon',
    description:
        'Jeune pharaon célèbre, restauration des cultes traditionnels.',
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
    date: 'c. 1186-1155 av. J.-C.',
    title: 'Ramsès III',
    description:
        'Dernier grand souverain du Nouvel Empire, défense du royaume.',
  ),
  TimelineEvent(
    date: 'c. 664-610 av. J.-C.',
    title: 'Psammétique Ier',
    description:
        'Fondateur de la XXVIe dynastie, réunification et renaissance saïte.',
  ),
  TimelineEvent(
    date: '51-30 av. J.-C.',
    title: 'Cléopâtre VII',
    description:
        'Dernière souveraine lagide, fin de l’indépendance égyptienne.',
  ),
];
