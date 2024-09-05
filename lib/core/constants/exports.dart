library;

/// Flutter Imports
export 'dart:io';
export 'dart:convert';
export 'dart:async';
export 'dart:math';

export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:flutter/foundation.dart';

/// Lib Imports
export 'package:horse_fit/main.dart';

/// Packages Imports
export 'package:logger/logger.dart';
export 'package:flutter_svg/svg.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:cached_network_image/cached_network_image.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:get_it/get_it.dart';
export 'package:skeletonizer/skeletonizer.dart';
export 'package:connectivity_plus/connectivity_plus.dart';
export 'package:dio/dio.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:permission_handler/permission_handler.dart';
export 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
export 'package:firebase_core/firebase_core.dart';
export 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// App
///-- Models
///---- Custom Models

///---- Request

///---- Response
export 'package:horse_fit/app/models/response/main_response_model/main_response_model.dart';
export 'package:horse_fit/app/models/response/data_model/data_model.dart';

///-- Services
///---- Remote
export 'package:horse_fit/app/services/remote/network_api_client.dart';

///---- Repository
export 'package:horse_fit/app/services/repository/data_manager_imp.dart';
export 'package:horse_fit/app/services/repository/data_manager.dart';

///-- View Model
export 'package:horse_fit/app/view_models/internet_connectivity/internet_connectivity_bloc.dart';

///-- Views
export 'package:horse_fit/app/views/login/login_view.dart';

///---- Components

///-- Widgets
export 'package:horse_fit/app/widgets/app_bar_widget.dart';
export 'package:horse_fit/app/widgets/text_view_widget.dart';
export 'package:horse_fit/app/widgets/svg_picture_asset_widget.dart';
export 'package:horse_fit/app/widgets/text_form_field_widget.dart';
export 'package:horse_fit/app/widgets/button_widget.dart';
export 'package:horse_fit/app/widgets/place_holder_widget.dart';
export 'package:horse_fit/app/widgets/paged_list_view_widget.dart';

/// Config
///-- Router
export 'package:horse_fit/config/router/app_router.dart';
export 'package:horse_fit/config/router/route_names.dart';

///-- Theme
export 'package:horse_fit/config/theme/app_theme.dart';
export 'package:horse_fit/config/theme/text_styles.dart';

/// Core
///-- Arguments

///-- Constants
export 'package:horse_fit/core/constants/app_colors.dart';
export 'package:horse_fit/core/constants/constants_resource.dart';
export 'package:horse_fit/core/constants/global_variables.dart';
export 'package:horse_fit/core/constants/images_resource.dart';
export 'package:horse_fit/core/constants/strings_resource.dart';
export 'package:horse_fit/core/constants/common_key.dart';

///-- Enums
export 'package:horse_fit/core/enums/network_status.dart';

///-- Extensions
export 'package:horse_fit/core/extensions/navigator_ext.dart';
export 'package:horse_fit/core/extensions/strings_ext.dart';
export 'package:horse_fit/core/extensions/widget_ext.dart';
export 'package:horse_fit/core/extensions/context_ext.dart';

///-- Packages
export 'package:horse_fit/core/packages/size_adapter/src/size_adapter.dart';
export 'package:horse_fit/core/packages/size_adapter/src/extensions/size_adapter_ext.dart';

///-- Services
export 'package:horse_fit/core/services/network_status_service.dart';

///-- Utils
export 'package:horse_fit/core/utils/svg_utils.dart';
export 'package:horse_fit/core/utils/utils.dart';
export 'package:horse_fit/core/utils/validation.dart';
export 'package:horse_fit/core/utils/injection_container.dart';
export 'package:horse_fit/core/utils/network_handler.dart';
export 'package:horse_fit/core/utils/permission_utils.dart';
export 'package:horse_fit/core/utils/dialogue_utils.dart';
export 'package:horse_fit/core/utils/no_animation_material_page_route.dart';
export 'package:horse_fit/core/utils/request_status.dart';
export 'package:horse_fit/core/utils/error_handler.dart';