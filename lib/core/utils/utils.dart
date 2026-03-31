import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/extensions/localization_extension.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

part 'app_utils.dart';

part 'base_functions.dart';

part 'log_bloc_observer.dart';

part 'typedef.dart';
