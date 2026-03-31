import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';
import 'package:flutter/material.dart';

class ProductionCard extends StatelessWidget {
  const ProductionCard({super.key, required this.line});

  final ProductionLineEntity line;

  Color _statusColor(String s) => switch (s.toLowerCase()) {
        'running' => Colors.green,
        'idle' => Colors.orange,
        _ => Colors.red,
      };

  String _statusLabel(BuildContext context, String s) =>
      switch (s.toLowerCase()) {
        'running' => context.locale.running,
        'idle' => context.locale.idle,
        _ => context.locale.stopped,
      };

  @override
  Widget build(BuildContext context) {
    final color = _statusColor(line.status);
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
                child: Text(line.flavor,
                    style: context.textStyle.manrope16w500),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.circle, size: 8, color: color),
                    const SizedBox(width: 4),
                    Text(
                      _statusLabel(context, line.status),
                      style: context.textStyle.manrope14w400
                          .copyWith(color: color, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.locale.dailyPlan(
                  line.produced.toString(),
                  line.dailyTarget.toString(),
                ),
                style: context.textStyle.manrope14w400.copyWith(
                  color:
                      context.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
              Text(
                '${line.progressPercent.toStringAsFixed(0)}%',
                style: context.textStyle.manrope14w400
                    .copyWith(color: context.colorScheme.primary),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: (line.progressPercent / 100).clamp(0.0, 1.0),
              minHeight: 8,
              backgroundColor:
                  context.colorScheme.primary.withValues(alpha: 0.1),
              valueColor:
                  AlwaysStoppedAnimation(context.colorScheme.primary),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.thermostat_rounded,
                  size: 16, color: Colors.orange),
              const SizedBox(width: 4),
              Text(
                context.locale.temperature(
                  line.temperature.toStringAsFixed(1),
                ),
                style: context.textStyle.manrope14w400.copyWith(
                  color: context.colorScheme.onSurface
                      .withValues(alpha: 0.6),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
