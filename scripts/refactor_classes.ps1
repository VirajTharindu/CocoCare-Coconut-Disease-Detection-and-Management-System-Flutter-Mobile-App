$base = "lib"

# Get all dart files  
$allDartFiles = Get-ChildItem -Path $base -Filter "*.dart" -Recurse

foreach ($file in $allDartFiles) {
    $content = Get-Content $file.FullName -Raw
    if ($null -eq $content) { continue }
    
    $original = $content
    
    # ========== CONTROLLER -> VIEWMODEL CLASS RENAMES ==========
    # LoginController -> LoginViewModel
    $content = $content -replace '\bLoginController\b', 'LoginViewModel'
    
    # SignupController -> SignupViewModel
    $content = $content -replace '\bSignupController\b', 'SignupViewModel'
    
    # VerifyEmailController -> VerifyEmailViewModel
    $content = $content -replace '\bVerifyEmailController\b', 'VerifyEmailViewModel'
    
    # OnBordingController -> OnboardingViewModel (fixing typo too)
    $content = $content -replace '\bOnBordingController\b', 'OnboardingViewModel'
    
    # DiseaseEventController -> DiseaseEventViewModel
    $content = $content -replace '\bDiseaseEventController\b', 'DiseaseEventViewModel'
    
    # TrackingController -> TrackingViewModel
    $content = $content -replace '\bTrackingController\b', 'TrackingViewModel'
    
    # UserController -> UserViewModel
    $content = $content -replace '\bUserController\b', 'UserViewModel'
    
    # UpdateNameController -> UpdateNameViewModel
    $content = $content -replace '\bUpdateNameController\b', 'UpdateNameViewModel'
    
    # NavigationController -> NavigationViewModel
    $content = $content -replace '\bNavigationController\b', 'NavigationViewModel'

    # ========== WIDGET/CLASS NAME FIXES ==========
    # Fix snake_case class names to PascalCase
    # Clogin_header -> CLoginHeader
    $content = $content -replace '\bClogin_header\b', 'CLoginHeader'
    
    # Clogin_form -> CLoginForm
    $content = $content -replace '\bClogin_form\b', 'CLoginForm'
    
    # profile_menu -> ProfileMenu
    $content = $content -replace '\bprofile_menu\b', 'ProfileMenu'
    
    # Bud_Rot -> BudRot
    $content = $content -replace '\bBud_Rot\b', 'BudRot'
    
    # Leaf_Rot -> LeafRot
    $content = $content -replace '\bLeaf_Rot\b', 'LeafRot'
    
    # Grey_Leaf_Spot -> GreyLeafSpot
    $content = $content -replace '\bGrey_Leaf_Spot\b', 'GreyLeafSpot'
    
    # Stem_Bleeding -> StemBleeding
    $content = $content -replace '\bStem_Bleeding\b', 'StemBleeding'
    
    # Coconut_Catapilar -> CoconutCaterpillar
    $content = $content -replace '\bCoconut_Catapilar\b', 'CoconutCaterpillar'
    
    # Tracking_Form_Container -> TrackingFormContainer
    $content = $content -replace '\bTracking_Form_Container\b', 'TrackingFormContainer'
    
    # ElevatedButtonWidget -> keep as is (already PascalCase)
    
    # CSpaceingStyle -> CSpacingStyle (fix typo)
    $content = $content -replace '\bCSpaceingStyle\b', 'CSpacingStyle'

    # ========== REMOVE DEBUG PRINTS ==========
    # Remove standalone print() statements (simple cases)
    $content = $content -replace '^\s*print\(.*?\);\s*$', '' -replace '(?m)^\s*$\r?\n', "`n"

    # Only write if content changed
    if ($content -ne $original) {
        Set-Content -Path $file.FullName -Value $content -NoNewline
        Write-Host "Renamed: $($file.Name)"
    }
}

Write-Host "`nClass renaming complete!"
