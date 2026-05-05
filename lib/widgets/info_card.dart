import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.imagePath,
    this.leading,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData? icon;
  final String? imagePath;
  final Widget? leading;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              if (leading != null)
                leading!
              else if (imagePath != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    child: Image.asset(
                      imagePath!,
                      width: 88,
                      height: 88,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: 88,
                        height: 88,
                        color: Theme.of(
                          context,
                        ).colorScheme.surfaceContainerHighest,
                        child: const Icon(
                          Icons.image_not_supported_rounded,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                )
              else
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon ?? Icons.info_outline_rounded),
                ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 6),
                    Text(
                      subtitle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (onTap != null)
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_forward_ios_rounded, size: 18),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
