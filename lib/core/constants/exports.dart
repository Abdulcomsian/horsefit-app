library;

/// Flutter Imports
export 'dart:io';
export 'dart:convert';
export 'dart:async';
export 'dart:math';

export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/gestures.dart';

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

/// App
///-- Models
///---- Custom Models
export 'package:horse_fit/app/models/custom/menu_model.dart';

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
export 'package:horse_fit/app/view_models/auth_view_models/lost_password/lost_password_bloc.dart';
export 'package:horse_fit/app/view_models/auth_view_models/login/login_bloc.dart';
export 'package:horse_fit/app/view_models/feed/feed_bloc.dart';

///-- Views
export 'package:horse_fit/app/views/auth_views/login/login_view.dart';
export 'package:horse_fit/app/views/auth_views/email_send/email_send_view.dart';
export 'package:horse_fit/app/views/auth_views/lost_password/lost_password_view.dart';
export 'package:horse_fit/app/views/auth_views/sign_up/sign_up_view.dart';
export 'package:horse_fit/app/views/on_board/on_board_view.dart';
export 'package:horse_fit/app/views/feed/feed_view.dart';

///---- Components
export 'package:horse_fit/app/views/components/social_button_widget.dart';
export 'package:horse_fit/app/views/components/avatar_widget.dart';
export 'package:horse_fit/app/views/components/gender_selection_button_widget.dart';
export 'package:horse_fit/app/views/components/user_type_widget.dart';
export 'package:horse_fit/app/widgets/profile_card_widget.dart';

///-- Widgets
export 'package:horse_fit/app/widgets/app_bar_widget.dart';
export 'package:horse_fit/app/widgets/text_view_widget.dart';
export 'package:horse_fit/app/widgets/svg_picture_asset_widget.dart';
export 'package:horse_fit/app/widgets/text_form_field_widget.dart';
export 'package:horse_fit/app/widgets/button_widget.dart';
export 'package:horse_fit/app/widgets/place_holder_widget.dart';
export 'package:horse_fit/app/widgets/paged_list_view_widget.dart';
export 'package:horse_fit/app/widgets/cached_network_image_widget.dart';

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
export 'package:horse_fit/core/enums/gender.dart';
export 'package:horse_fit/core/enums/network_status.dart';
export 'package:horse_fit/core/enums/user_type.dart';

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
