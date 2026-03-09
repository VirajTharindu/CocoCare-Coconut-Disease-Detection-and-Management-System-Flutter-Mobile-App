$base = "lib"

# Get all dart files in the new structure
$allDartFiles = Get-ChildItem -Path $base -Filter "*.dart" -Recurse

foreach ($file in $allDartFiles) {
    $content = Get-Content $file.FullName -Raw
    if ($null -eq $content) { continue }
    
    $original = $content

    # ========== CORE LAYER IMPORTS ==========
    # common/appbar/appbar.dart -> core/widgets/appbar/custom_appbar.dart
    $content = $content -replace "package:coconut_disease_detection/common/appbar/appbar\.dart", "package:coconut_disease_detection/core/widgets/appbar/custom_appbar.dart"
    
    # common/loaders/animation_loader.dart -> core/widgets/loaders/animation_loader.dart
    $content = $content -replace "package:coconut_disease_detection/common/loaders/animation_loader\.dart", "package:coconut_disease_detection/core/widgets/loaders/animation_loader.dart"
    
    # common/loaders/circular.loader.dart (empty file, remove if imported)
    $content = $content -replace "import 'package:coconut_disease_detection/common/loaders/circular\.loader\.dart';\r?\n?", ""
    
    # common/network_manager.dart -> core/network/network_manager.dart
    $content = $content -replace "package:coconut_disease_detection/common/network_manager\.dart", "package:coconut_disease_detection/core/network/network_manager.dart"
    
    # common/notification/notification.dart -> core/widgets/notification/notification.dart
    $content = $content -replace "package:coconut_disease_detection/common/notification/notification\.dart", "package:coconut_disease_detection/core/widgets/notification/notification.dart"
    
    # common/section_heading.dart -> core/widgets/section_heading.dart
    $content = $content -replace "package:coconut_disease_detection/common/section_heading\.dart", "package:coconut_disease_detection/core/widgets/section_heading.dart"
    
    # common/shimmer.dart -> core/widgets/shimmer_effect.dart
    $content = $content -replace "package:coconut_disease_detection/common/shimmer\.dart", "package:coconut_disease_detection/core/widgets/shimmer_effect.dart"
    
    # common/success_screen.dart -> core/widgets/success_screen.dart
    $content = $content -replace "package:coconut_disease_detection/common/success_screen\.dart", "package:coconut_disease_detection/core/widgets/success_screen.dart"
    
    # common/widgets.login_signup/form_divider.dart -> core/widgets/login_signup/form_divider.dart
    $content = $content -replace "package:coconut_disease_detection/common/widgets\.login_signup/form_divider\.dart", "package:coconut_disease_detection/core/widgets/login_signup/form_divider.dart"
    
    # common/widgets.login_signup/socialmedia.dart -> core/widgets/login_signup/social_media_buttons.dart
    $content = $content -replace "package:coconut_disease_detection/common/widgets\.login_signup/socialmedia\.dart", "package:coconut_disease_detection/core/widgets/login_signup/social_media_buttons.dart"
    
    # common/custom_shapes/containers/circular_containers.dart -> core/custom_shapes/containers/circular_containers.dart
    $content = $content -replace "package:coconut_disease_detection/common/custom_shapes/containers/circular_containers\.dart", "package:coconut_disease_detection/core/custom_shapes/containers/circular_containers.dart"
    
    # common/custom_shapes/containers/primary_header_container.dart -> core/custom_shapes/containers/primary_header_container.dart
    $content = $content -replace "package:coconut_disease_detection/common/custom_shapes/containers/primary_header_container\.dart", "package:coconut_disease_detection/core/custom_shapes/containers/primary_header_container.dart"
    
    # common/custom_shapes/curved_edges/curved_edges_widgets.dart -> core/custom_shapes/curved_edges/curved_edges_widgets.dart
    $content = $content -replace "package:coconut_disease_detection/common/custom_shapes/curved_edges/curved_edges_widgets\.dart", "package:coconut_disease_detection/core/custom_shapes/curved_edges/curved_edges_widgets.dart"
    
    # common/custom_shapes/curved_edges/cureved_edges.dart -> core/custom_shapes/curved_edges/curved_edges.dart
    $content = $content -replace "package:coconut_disease_detection/common/custom_shapes/curved_edges/cureved_edges\.dart", "package:coconut_disease_detection/core/custom_shapes/curved_edges/curved_edges.dart"
    
    # common/styles/spacing_styles.dart -> core/styles/spacing_styles.dart
    $content = $content -replace "package:coconut_disease_detection/common/styles/spacing_styles\.dart", "package:coconut_disease_detection/core/styles/spacing_styles.dart"
    
    # ========== UTILS -> CORE/UTILS ==========
    $content = $content -replace "package:coconut_disease_detection/utils/constants/CCircularImage\.dart", "package:coconut_disease_detection/core/widgets/circular_image.dart"
    $content = $content -replace "package:coconut_disease_detection/utils/", "package:coconut_disease_detection/core/utils/"
    
    # ========== BINDINGS ==========
    $content = $content -replace "package:coconut_disease_detection/bindings/general_binding\.dart", "package:coconut_disease_detection/core/bindings/general_binding.dart"
    
    # ========== NAVIGATION MENU ==========
    $content = $content -replace "package:coconut_disease_detection/navigation_menu\.dart", "package:coconut_disease_detection/features/navigation/views/navigation_menu.dart"
    
    # ========== DATA REPOSITORY FIX ==========
    $content = $content -replace "package:coconut_disease_detection/data/repositories/disease_event/disease_event_repositary\.dart", "package:coconut_disease_detection/data/repositories/disease_event/disease_event_repository.dart"
    
    # ========== AUTHENTICATION CONTROLLERS -> VIEWMODELS ==========
    $content = $content -replace "package:coconut_disease_detection/features/authentication/controllers/login/login_controlling\.dart", "package:coconut_disease_detection/features/authentication/viewmodels/login_viewmodel.dart"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/controllers/signup/signup_controller\.dart", "package:coconut_disease_detection/features/authentication/viewmodels/signup_viewmodel.dart"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/controllers/signup/verify_email_controller\.dart", "package:coconut_disease_detection/features/authentication/viewmodels/verify_email_viewmodel.dart"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/controllers/onboarding/onboarding_controller\.dart", "package:coconut_disease_detection/features/authentication/viewmodels/onboarding_viewmodel.dart"
    
    # ========== AUTHENTICATION SCREENS -> VIEWS ==========
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/login/", "package:coconut_disease_detection/features/authentication/views/login/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/signup/", "package:coconut_disease_detection/features/authentication/views/signup/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/onboarding/", "package:coconut_disease_detection/features/authentication/views/onboarding/"
    
    # ========== DISEASE DETECTION (from auth/screens) ==========
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/disease_detect/", "package:coconut_disease_detection/features/disease_detection/views/disease_detect/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/disease_list/", "package:coconut_disease_detection/features/disease_detection/views/disease_list/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/diseases/", "package:coconut_disease_detection/features/disease_detection/views/diseases/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/analyzing/", "package:coconut_disease_detection/features/disease_detection/views/analyzing/"
    
    # ========== DISEASE EVENTS (from auth) ==========
    $content = $content -replace "package:coconut_disease_detection/features/authentication/models/disease_event_model\.dart", "package:coconut_disease_detection/features/disease_events/models/disease_event_model.dart"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/controllers/disease_event/disease_event_controller\.dart", "package:coconut_disease_detection/features/disease_events/viewmodels/disease_event_viewmodel.dart"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/disease_event_form/", "package:coconut_disease_detection/features/disease_events/views/disease_event_form/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/disease_event_list/", "package:coconut_disease_detection/features/disease_events/views/disease_event_list/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/create_track_sub_collections/", "package:coconut_disease_detection/features/disease_events/views/create_track_sub_collections/"
    
    # ========== HOME (from auth/screens) ==========
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/home/", "package:coconut_disease_detection/features/home/views/"
    
    # ========== RESULT (from auth/screens) ==========
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/result/", "package:coconut_disease_detection/features/result/views/"
    
    # ========== TRACKING (from auth) ==========
    $content = $content -replace "package:coconut_disease_detection/features/authentication/models/tracking_model\.dart", "package:coconut_disease_detection/features/tracking/models/tracking_model.dart"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/controllers/tracking/tracking_controller\.dart", "package:coconut_disease_detection/features/tracking/viewmodels/tracking_viewmodel.dart"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/tracking/", "package:coconut_disease_detection/features/tracking/views/tracking/"
    $content = $content -replace "package:coconut_disease_detection/features/authentication/screens/tracking_report/", "package:coconut_disease_detection/features/tracking/views/tracking_report/"
    
    # ========== PERSONALIZATION CONTROLLERS -> VIEWMODELS ==========
    $content = $content -replace "package:coconut_disease_detection/features/personalization/controllers/user_controller\.dart", "package:coconut_disease_detection/features/personalization/viewmodels/user_viewmodel.dart"
    $content = $content -replace "package:coconut_disease_detection/features/personalization/controllers/update_name_controller\.dart", "package:coconut_disease_detection/features/personalization/viewmodels/update_name_viewmodel.dart"
    
    # ========== PERSONALIZATION SCREENS -> VIEWS ==========
    $content = $content -replace "package:coconut_disease_detection/features/personalization/screens/", "package:coconut_disease_detection/features/personalization/views/"

    # Only write if content changed
    if ($content -ne $original) {
        Set-Content -Path $file.FullName -Value $content -NoNewline
        Write-Host "Updated: $($file.FullName)"
    }
}

Write-Host "`nImport replacement complete!"
