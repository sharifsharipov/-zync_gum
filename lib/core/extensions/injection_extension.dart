import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zync_gum/core/di/injection.dart';

T inject<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) => sl.get<T>(instanceName: instanceName, param1: param1, param2: param2);

T getCubit<T extends Object>(BuildContext context) => context.read<T>();
