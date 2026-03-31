import 'package:flutter/material.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key, required this.business});

  final BusinessEntity business;

  IconData _typeIcon(String type) => switch (type.toLowerCase()) {
        'retail' => Icons.store_rounded,
        'manufacturing' => Icons.precision_manufacturing_rounded,
        'service' => Icons.miscellaneous_services_rounded,
        'restaurant' => Icons.restaurant_rounded,
        'tech' => Icons.computer_rounded,
        _ => Icons.business_rounded,
      };

  Color _typeColor(BuildContext context, String type) =>
      switch (type.toLowerCase()) {
        'retail' => Colors.blue,
        'manufacturing' => Colors.orange,
        'service' => Colors.purple,
        'restaurant' => Colors.red,
        'tech' => Colors.teal,
        _ => context.colorScheme.primary,
      };

  @override
  Widget build(BuildContext context) {
    final color = _typeColor(context, business.type);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(_typeIcon(business.type), color: color, size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      business.name,
                      style: context.textStyle.manrope16w500,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      business.type.toUpperCase(),
                      style: context.textStyle.manrope14w400.copyWith(
                        color: color,
                        fontSize: 11,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: business.isActive
                      ? Colors.green.withValues(alpha: 0.12)
                      : Colors.grey.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 7,
                      color: business.isActive ? Colors.green : Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      business.isActive ? context.locale.active : context.locale.inactive,
                      style: context.textStyle.manrope14w400.copyWith(
                        fontSize: 11,
                        color:
                            business.isActive ? Colors.green : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(height: 1),
          const SizedBox(height: 12),
          Row(
            children: [
              _StatChip(
                icon: Icons.attach_money_rounded,
                label: '\$${_formatRevenue(business.monthlyRevenue)}/mo',
                color: Colors.green,
                context: context,
              ),
              const SizedBox(width: 8),
              _StatChip(
                icon: Icons.people_outline_rounded,
                label: '${business.employeesCount} emp.',
                color: Colors.blue,
                context: context,
              ),
              if (business.address.isNotEmpty) ...[
                const SizedBox(width: 8),
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 14,
                        color: context.colorScheme.onSurface
                            .withValues(alpha: 0.45),
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          business.address,
                          style: context.textStyle.manrope14w400.copyWith(
                            fontSize: 12,
                            color: context.colorScheme.onSurface
                                .withValues(alpha: 0.55),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  String _formatRevenue(double value) {
    if (value >= 1000000) return '${(value / 1000000).toStringAsFixed(1)}M';
    if (value >= 1000) return '${(value / 1000).toStringAsFixed(1)}K';
    return value.toStringAsFixed(0);
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.icon,
    required this.label,
    required this.color,
    required this.context,
  });

  final IconData icon;
  final String label;
  final Color color;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: context.textStyle.manrope14w400.copyWith(
              fontSize: 12,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
