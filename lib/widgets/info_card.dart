import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: icon == null ? null : Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: onTap == null
            ? null
            : const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      ),
    );
  }
}
