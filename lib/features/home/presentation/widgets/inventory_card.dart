import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:flutter/material.dart';

class InventoryCard extends StatelessWidget {
  const InventoryCard({super.key, required this.item});

  final InventoryEntity item;

  @override
  Widget build(BuildContext context) {
    final ratio = item.minLevel > 0
        ? (item.quantity / item.minLevel).clamp(0.0, 2.0)
        : 1.0;
    final isLow = item.quantity <= item.minLevel;
    final barColor = isLow ? Colors.orange : Colors.green;

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
              Expanded(
                child: Text(item.materialName,
                    style: context.textStyle.manrope16w500),
              ),
              if (isLow)
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.orange.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    context.locale.lowStock,
                    style: context.textStyle.manrope14w400.copyWith(
                        color: Colors.orange, fontSize: 12),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${item.quantity.toStringAsFixed(1)} ${item.unit}',
                style: context.textStyle.manrope14w400.copyWith(
                  color:
                      context.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
              Text(
                'Min: ${item.minLevel.toStringAsFixed(1)} ${item.unit}',
                style: context.textStyle.manrope14w400.copyWith(
                  color: context.colorScheme.onSurface
                      .withValues(alpha: 0.4),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: (ratio / 2).clamp(0.0, 1.0),
              minHeight: 8,
              backgroundColor: barColor.withValues(alpha: 0.1),
              valueColor: AlwaysStoppedAnimation(barColor),
            ),
          ),
        ],
      ),
    );
  }
}
