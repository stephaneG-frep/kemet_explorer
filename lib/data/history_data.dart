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
    date: 'c. 3050-3007 av. J.-C.',
    title: 'Hor-Aha',
    description: 'Premier souverain de la Ire dynastie après l’unification.',
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
    date: 'c. 1213-1203 av. J.-C.',
    title: 'Mérenptah',
    description: 'Successeur de Ramsès II, campagnes défensives importantes.',
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
    date: 'c. 747-716 av. J.-C.',
    title: 'Piye (dynastie kouchite)',
    description: 'Roi de Napata qui impose son autorité sur l’Égypte.',
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
