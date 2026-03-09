$base = "lib"

# Create remaining directories
$dirs = @(
    "features\disease_events\models",
    "features\disease_events\viewmodels",
    "features\disease_events\views\disease_event_form",
    "features\disease_events\views\disease_event_list",
    "features\disease_events\views\create_track_sub_collections",
    "features\home\views",
    "features\navigation\viewmodels",
    "features\navigation\views",
    "features\result\views",
    "features\tracking\models",
    "features\tracking\viewmodels",
    "features\tracking\views\tracking",
    "features\tracking\views\tracking_report",
    "features\personalization\viewmodels",
    "features\personalization\views\widgets"
)
foreach ($d in $dirs) {
    New-Item -ItemType Directory -Path "$base\$d" -Force | Out-Null
}
Write-Host "Remaining directories created"

# ===================== COPY FILES =====================

# Core: Bindings
Copy-Item "$base\bindings\general_binding.dart" "$base\core\bindings\general_binding.dart" -Force

# Core: Network
Copy-Item "$base\common\network_manager.dart" "$base\core\network\network_manager.dart" -Force

# Core: Widgets
Copy-Item "$base\common\appbar\appbar.dart" "$base\core\widgets\appbar\custom_appbar.dart" -Force
Copy-Item "$base\common\loaders\animation_loader.dart" "$base\core\widgets\loaders\animation_loader.dart" -Force
Copy-Item "$base\common\notification\notification.dart" "$base\core\widgets\notification\notification.dart" -Force
Copy-Item "$base\common\section_heading.dart" "$base\core\widgets\section_heading.dart" -Force
Copy-Item "$base\common\shimmer.dart" "$base\core\widgets\shimmer_effect.dart" -Force
Copy-Item "$base\common\success_screen.dart" "$base\core\widgets\success_screen.dart" -Force
Copy-Item "$base\common\widgets.login_signup\form_divider.dart" "$base\core\widgets\login_signup\form_divider.dart" -Force
Copy-Item "$base\common\widgets.login_signup\socialmedia.dart" "$base\core\widgets\login_signup\social_media_buttons.dart" -Force
Copy-Item "$base\utils\constants\CCircularImage.dart" "$base\core\widgets\circular_image.dart" -Force

# Core: Custom Shapes
Copy-Item "$base\common\custom_shapes\containers\circular_containers.dart" "$base\core\custom_shapes\containers\circular_containers.dart" -Force
Copy-Item "$base\common\custom_shapes\containers\primary_header_container.dart" "$base\core\custom_shapes\containers\primary_header_container.dart" -Force
Copy-Item "$base\common\custom_shapes\curved_edges\curved_edges_widgets.dart" "$base\core\custom_shapes\curved_edges\curved_edges_widgets.dart" -Force
Copy-Item "$base\common\custom_shapes\curved_edges\cureved_edges.dart" "$base\core\custom_shapes\curved_edges\curved_edges.dart" -Force

# Core: Styles
Copy-Item "$base\common\styles\spacing_styles.dart" "$base\core\styles\spacing_styles.dart" -Force

# Core: Utils (copy entire utils tree)
Copy-Item "$base\utils\constants\api_constants.dart" "$base\core\utils\constants\api_constants.dart" -Force
Copy-Item "$base\utils\constants\colors.dart" "$base\core\utils\constants\colors.dart" -Force
Copy-Item "$base\utils\constants\enums.dart" "$base\core\utils\constants\enums.dart" -Force
Copy-Item "$base\utils\constants\image_strings.dart" "$base\core\utils\constants\image_strings.dart" -Force
Copy-Item "$base\utils\constants\sizes.dart" "$base\core\utils\constants\sizes.dart" -Force
Copy-Item "$base\utils\constants\text_strings.dart" "$base\core\utils\constants\text_strings.dart" -Force
Copy-Item "$base\utils\device\device_utility.dart" "$base\core\utils\device\device_utility.dart" -Force
Copy-Item "$base\utils\exceptions\*.dart" "$base\core\utils\exceptions\" -Force
Copy-Item "$base\utils\formatters\formatter.dart" "$base\core\utils\formatters\formatter.dart" -Force
Copy-Item "$base\utils\helpers\helper_functions.dart" "$base\core\utils\helpers\helper_functions.dart" -Force
Copy-Item "$base\utils\http\http_client.dart" "$base\core\utils\http\http_client.dart" -Force
Copy-Item "$base\utils\local_storage\storage_utility.dart" "$base\core\utils\local_storage\storage_utility.dart" -Force
Copy-Item "$base\utils\logging\logger.dart" "$base\core\utils\logging\logger.dart" -Force
Copy-Item "$base\utils\popups\full_screen_loader.dart" "$base\core\utils\popups\full_screen_loader.dart" -Force
Copy-Item "$base\utils\popups\loaders.dart" "$base\core\utils\popups\loaders.dart" -Force
Copy-Item "$base\utils\theme\theme.dart" "$base\core\utils\theme\theme.dart" -Force
Copy-Item "$base\utils\theme\custom themes\*.dart" "$base\core\utils\theme\custom themes\" -Force
Copy-Item "$base\utils\validators\validation.dart" "$base\core\utils\validators\validation.dart" -Force

Write-Host "Core files copied"

# Data repository fix
Copy-Item "$base\data\repositories\disease_event\disease_event_repositary.dart" "$base\data\repositories\disease_event\disease_event_repository.dart" -Force

# Authentication viewmodels
Copy-Item "$base\features\authentication\controllers\login\login_controlling.dart" "$base\features\authentication\viewmodels\login_viewmodel.dart" -Force
Copy-Item "$base\features\authentication\controllers\signup\signup_controller.dart" "$base\features\authentication\viewmodels\signup_viewmodel.dart" -Force
Copy-Item "$base\features\authentication\controllers\signup\verify_email_controller.dart" "$base\features\authentication\viewmodels\verify_email_viewmodel.dart" -Force
Copy-Item "$base\features\authentication\controllers\onboarding\onboarding_controller.dart" "$base\features\authentication\viewmodels\onboarding_viewmodel.dart" -Force

# Authentication views
Copy-Item "$base\features\authentication\screens\login\login.dart" "$base\features\authentication\views\login\login.dart" -Force
Copy-Item "$base\features\authentication\screens\login\widgets\login_form.dart" "$base\features\authentication\views\login\widgets\login_form.dart" -Force
Copy-Item "$base\features\authentication\screens\login\widgets\login_header.dart" "$base\features\authentication\views\login\widgets\login_header.dart" -Force
Copy-Item "$base\features\authentication\screens\signup\signup.dart" "$base\features\authentication\views\signup\signup.dart" -Force
Copy-Item "$base\features\authentication\screens\signup\verify_email.dart" "$base\features\authentication\views\signup\verify_email.dart" -Force
Copy-Item "$base\features\authentication\screens\signup\widgets\signup_form.dart" "$base\features\authentication\views\signup\widgets\signup_form.dart" -Force
Copy-Item "$base\features\authentication\screens\signup\widgets\terms.dart" "$base\features\authentication\views\signup\widgets\terms.dart" -Force
Copy-Item "$base\features\authentication\screens\onboarding\onboarding.dart" "$base\features\authentication\views\onboarding\onboarding.dart" -Force
Copy-Item "$base\features\authentication\screens\onboarding\widgets\*.dart" "$base\features\authentication\views\onboarding\widgets\" -Force

Write-Host "Auth files copied"

# Disease detection views
Copy-Item "$base\features\authentication\screens\disease_detect\disease_detect.dart" "$base\features\disease_detection\views\disease_detect\disease_detect.dart" -Force
Copy-Item "$base\features\authentication\screens\disease_list\disease_list.dart" "$base\features\disease_detection\views\disease_list\disease_list.dart" -Force
Copy-Item "$base\features\authentication\screens\diseases\*.dart" "$base\features\disease_detection\views\diseases\" -Force
Copy-Item "$base\features\authentication\screens\analyzing\analyzing.dart" "$base\features\disease_detection\views\analyzing\analyzing.dart" -Force

# Disease events
Copy-Item "$base\features\authentication\models\disease_event_model.dart" "$base\features\disease_events\models\disease_event_model.dart" -Force
Copy-Item "$base\features\authentication\controllers\disease_event\disease_event_controller.dart" "$base\features\disease_events\viewmodels\disease_event_viewmodel.dart" -Force
Copy-Item "$base\features\authentication\screens\disease_event_form\disease_event_form.dart" "$base\features\disease_events\views\disease_event_form\disease_event_form.dart" -Force
Copy-Item "$base\features\authentication\screens\disease_event_list\disease_event_list.dart" "$base\features\disease_events\views\disease_event_list\disease_event_list.dart" -Force
Copy-Item "$base\features\authentication\screens\create_track_sub_collections\create_track_sub_coll.dart" "$base\features\disease_events\views\create_track_sub_collections\create_track_sub_coll.dart" -Force

# Home
Copy-Item "$base\features\authentication\screens\home\home.dart" "$base\features\home\views\home.dart" -Force
Copy-Item "$base\features\authentication\screens\home\home_appbar.dart" "$base\features\home\views\home_appbar.dart" -Force

# Result
Copy-Item "$base\features\authentication\screens\result\result.dart" "$base\features\result\views\result.dart" -Force

# Tracking
Copy-Item "$base\features\authentication\models\tracking_model.dart" "$base\features\tracking\models\tracking_model.dart" -Force
Copy-Item "$base\features\authentication\controllers\tracking\tracking_controller.dart" "$base\features\tracking\viewmodels\tracking_viewmodel.dart" -Force
Copy-Item "$base\features\authentication\screens\tracking\tracking.dart" "$base\features\tracking\views\tracking\tracking.dart" -Force
Copy-Item "$base\features\authentication\screens\tracking_report\tracking_report.dart" "$base\features\tracking\views\tracking_report\tracking_report.dart" -Force

# Personalization
Copy-Item "$base\features\personalization\controllers\user_controller.dart" "$base\features\personalization\viewmodels\user_viewmodel.dart" -Force
Copy-Item "$base\features\personalization\controllers\update_name_controller.dart" "$base\features\personalization\viewmodels\update_name_viewmodel.dart" -Force
Copy-Item "$base\features\personalization\screens\profile.dart" "$base\features\personalization\views\profile.dart" -Force
Copy-Item "$base\features\personalization\screens\widgets\*.dart" "$base\features\personalization\views\widgets\" -Force

# Navigation menu
Copy-Item "$base\navigation_menu.dart" "$base\features\navigation\views\navigation_menu.dart" -Force

Write-Host "All files copied successfully"
