import '../models/monument.dart';

const monumentsData = [
  Monument(
    id: 'gizeh',
    name: 'Pyramides de Gizeh',
    location: 'Plateau de Gizeh',
    importance:
        'Chef-d’œuvre funéraire de l’Ancien Empire. Elles montrent la maîtrise technique et la dimension religieuse du pouvoir royal.',
    imagePath: 'assets/images/gizeh.jpg',
  ),
  Monument(
    id: 'karnak',
    name: 'Karnak',
    location: 'Thèbes',
    importance:
        'Immense complexe religieux dédié notamment à Amon. Agrandi sur des siècles, il illustre l’évolution des cultes.',
    imagePath: 'assets/images/karnak.jpg',
  ),
  Monument(
    id: 'louxor',
    name: 'Louxor',
    location: 'Thèbes',
    importance:
        'Temple majeur lié à la royauté et aux grandes fêtes comme l’Opet. Il reliait symboliquement le pharaon aux dieux.',
    imagePath: 'assets/images/louxor.jpg',
  ),
  Monument(
    id: 'abou_simbel',
    name: 'Abou Simbel',
    location: 'Nubie',
    importance:
        'Temples monumentaux de Ramsès II creusés dans la roche. Leur déplacement au XXe siècle a été un exploit patrimonial.',
    imagePath: 'assets/images/abou_simbel.jpg',
  ),
  Monument(
    id: 'vallee_rois',
    name: 'Vallée des Rois',
    location: 'Rive ouest de Louxor',
    importance:
        'Nécropole royale du Nouvel Empire, avec des tombes décorées décrivant le voyage dans l’au-delà.',
    imagePath: 'assets/images/vallee_rois.jpg',
  ),
  Monument(
    id: 'sphinx',
    name: 'Sphinx',
    location: 'Gizeh',
    importance:
        'Statue emblématique associant force royale et mystère. Elle gardait symboliquement l’accès aux monuments funéraires.',
    imagePath: 'assets/images/sphinx.jpg',
  ),
];
