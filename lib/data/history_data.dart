import '../models/historical_period.dart';
import '../models/timeline_event.dart';

const historyData = [
  HistoricalPeriod(
    name: 'Ancien Empire',
    dateRange: 'c. 2686-2181 av. J.-C.',
    description:
        'Période des grandes pyramides et d’un pouvoir royal centralisé.',
  ),
  HistoricalPeriod(
    name: 'Moyen Empire',
    dateRange: 'c. 2055-1650 av. J.-C.',
    description: 'Retour de la stabilité politique et essor culturel.',
  ),
  HistoricalPeriod(
    name: 'Nouvel Empire',
    dateRange: 'c. 1550-1069 av. J.-C.',
    description:
        'Apogée militaire, diplomatique et artistique de l’Égypte antique.',
  ),
  HistoricalPeriod(
    name: 'Basse époque',
    dateRange: 'c. 664-332 av. J.-C.',
    description: 'Période de transformations et d’influences extérieures.',
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
