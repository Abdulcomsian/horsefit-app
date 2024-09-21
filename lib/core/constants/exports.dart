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
export 'package:uuid/uuid.dart';
export 'package:flutter_chat_ui/flutter_chat_ui.dart';

/// App
///-- Models
///---- Custom Models
export 'package:horse_fit/app/models/custom/menu_model.dart';
export 'package:horse_fit/app/models/custom/selectable_option_card_model.dart';
export 'package:horse_fit/app/models/custom/owner_trainer_role_model.dart';

///---- Request

///---- Response
export 'package:horse_fit/app/models/response/main_response_model/main_response_model.dart';
export 'package:horse_fit/app/models/response/data_model/data_model.dart';
export 'package:horse_fit/app/models/response/post_model/post_model.dart';

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
export 'package:horse_fit/app/view_models/create_post/create_post_bloc.dart';
export 'package:horse_fit/app/view_models/add_devices/add_devices_bloc.dart';
export 'package:horse_fit/app/view_models/workout_log/workout_log_bloc.dart';
export 'package:horse_fit/app/view_models/message_center/message_center_bloc.dart';
export 'package:horse_fit/app/view_models/horse_profile/horse_profile_bloc.dart';
export 'package:horse_fit/app/view_models/add_owner_trainer/add_owner_trainer_bloc.dart';

///-- Views
export 'package:horse_fit/app/views/auth_views/login/login_view.dart';
export 'package:horse_fit/app/views/auth_views/email_send/email_send_view.dart';
export 'package:horse_fit/app/views/auth_views/lost_password/lost_password_view.dart';
export 'package:horse_fit/app/views/auth_views/sign_up/sign_up_view.dart';
export 'package:horse_fit/app/views/on_board/on_board_view.dart';
export 'package:horse_fit/app/views/feed/feed_view.dart';
export 'package:horse_fit/app/views/menu/menu_view.dart';
export 'package:horse_fit/app/views/create_post/create_post/create_post_view.dart';
export 'package:horse_fit/app/views/create_post/finish_post/finish_post_view.dart';
export 'package:horse_fit/app/views/add_devices_views/add_devices/add_devices_view.dart';
export 'package:horse_fit/app/views/add_devices_views/selected_device/selected_device_view.dart';
export 'package:horse_fit/app/views/my_stable_views/add_horse/add_horse_view.dart';
export 'package:horse_fit/app/views/my_stable_views/my_stable/my_stable_view.dart';
export 'package:horse_fit/app/views/profile_info/profile_info_view.dart';
export 'package:horse_fit/app/views/workout_log_views/select_horse/select_horse_view.dart';
export 'package:horse_fit/app/views/workout_log_views/workout_log/workout_log_view.dart';
export 'package:horse_fit/app/views/horse_profile/horse_profile_view.dart';
export 'package:horse_fit/app/views/messages_and_notifications_veiws.dart/message_center_view.dart';
export 'package:horse_fit/app/views/shop_views/shop_view.dart';
export 'package:horse_fit/app/views/start_workout_views/start_workout/start_workout_view.dart';
export 'package:horse_fit/app/views/statistics_views/statistics_view/statistics_view.dart';
export 'package:horse_fit/app/views/support_and_settings_views/support_and_settings_view.dart';
export 'package:horse_fit/app/views/messages_and_notifications_veiws.dart/chat/chat_view.dart';
export 'package:horse_fit/app/views/add_owner_and_trainer_views/add_owner_and_trainer_view/add_owner_and_trainer_view.dart';
export 'package:horse_fit/app/views/add_owner_and_trainer_views/role_owner_or_trainer/role_owner_or_trainer_view.dart';
export 'package:horse_fit/app/views/add_owner_and_trainer_views/search_owner_and_trainer/search_owner_and_trainer_view.dart';
export 'package:horse_fit/app/views/horse_info/horse_info_view.dart';
export 'package:horse_fit/app/views/select_friends/select_friends_view.dart';
export 'package:horse_fit/app/views/start_workout_views/interval_settings/interval_settings_view.dart';
export 'package:horse_fit/app/views/start_workout_views/selected_horse/selected_horse_view.dart';

///---- Components
export 'package:horse_fit/app/views/auth_views/components/social_button_widget.dart';
export 'package:horse_fit/app/views/auth_views/components/avatar_widget.dart';
export 'package:horse_fit/app/views/auth_views/components/gender_selection_button_widget.dart';
export 'package:horse_fit/app/views/auth_views/components/user_type_widget.dart';
export 'package:horse_fit/app/views/feed/components/feed_tab_item_widget.dart';
export 'package:horse_fit/app/views/feed/components/feed_header_widget.dart';
export 'package:horse_fit/app/views/feed/components/post_widget.dart';
export 'package:horse_fit/app/widgets/selectable_option_card_widget.dart';
export 'package:horse_fit/app/views/add_devices_views/selected_device/components/bluetooth_card_widget.dart';
export 'package:horse_fit/app/views/add_devices_views/selected_device/components/device_status_card_widget.dart';
export 'package:horse_fit/app/views/workout_log_views/workout_log/components/horse_workout_log_card_widget.dart';
export 'package:horse_fit/app/views/messages_and_notifications_veiws.dart/components/message_center_card_widget.dart';
export 'package:horse_fit/app/views/messages_and_notifications_veiws.dart/components/message_center_selectable_card_widget.dart';
export 'package:horse_fit/app/views/start_workout_views/start_workout/components/horse_workout_card_widget.dart';
export 'package:horse_fit/app/views/add_owner_and_trainer_views/role_owner_or_trainer/components/role_card_widget.dart';
export 'package:horse_fit/app/views/add_owner_and_trainer_views/search_owner_and_trainer/components/searched_user_tile_widget.dart';

///-- Data
export 'package:horse_fit/app/views/create_post/create_post/data/all_post_privacy_data.dart';
export 'package:horse_fit/app/views/add_owner_and_trainer_views/role_owner_or_trainer/data/owner_trainer_role_data.dart';

///-- Widgets
export 'package:horse_fit/app/widgets/profile_card_widget.dart';
export 'package:horse_fit/app/widgets/app_bar_widget.dart';
export 'package:horse_fit/app/widgets/text_view_widget.dart';
export 'package:horse_fit/app/widgets/svg_picture_asset_widget.dart';
export 'package:horse_fit/app/widgets/text_form_field_widget.dart';
export 'package:horse_fit/app/widgets/button_widget.dart';
export 'package:horse_fit/app/widgets/place_holder_widget.dart';
export 'package:horse_fit/app/widgets/paged_list_view_widget.dart';
export 'package:horse_fit/app/widgets/cached_network_image_widget.dart';
export 'package:horse_fit/app/widgets/radio_widget.dart';
export 'package:horse_fit/app/widgets/switch_widget.dart';
export 'package:horse_fit/app/widgets/show_loading_widget.dart';
export 'package:horse_fit/app/widgets/back_button_widget.dart';
export 'package:horse_fit/app/widgets/user_profile_card_widget.dart';
export 'package:horse_fit/app/widgets/profile_stats_card_widget.dart';
export 'package:horse_fit/app/widgets/profile_status_card_tile_widget.dart';

/// Config
///-- Router
export 'package:horse_fit/config/router/app_router.dart';
export 'package:horse_fit/config/router/route_names.dart';

///-- Theme
export 'package:horse_fit/config/theme/app_theme.dart';
export 'package:horse_fit/config/theme/text_styles.dart';

/// Core
///-- Arguments
export 'package:horse_fit/core/arguments/create_post.dart';
export 'package:horse_fit/core/arguments/add_owner_trainer.dart';

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
export 'package:horse_fit/core/enums/post_privacy.dart';
export 'package:horse_fit/core/enums/message_center_tab.dart';
export 'package:horse_fit/core/enums/role.dart';

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
export 'package:horse_fit/core/utils/app_bloc_observer.dart';
