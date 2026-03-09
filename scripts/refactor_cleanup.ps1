$base = "lib"

# Delete old directories that have been moved
# Old common/ directory -> moved to core/
Remove-Item "$base\common" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: common/"

# Old utils/ directory -> moved to core/utils/
Remove-Item "$base\utils" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: utils/"

# Old bindings/ directory -> moved to core/bindings/
Remove-Item "$base\bindings" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: bindings/"

# Old navigation_menu.dart -> moved to features/navigation/views/
Remove-Item "$base\navigation_menu.dart" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: navigation_menu.dart"

# Old authentication/controllers/ -> moved to respective viewmodels/
Remove-Item "$base\features\authentication\controllers" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: auth/controllers/"

# Old authentication/screens/ -> moved to respective views/
Remove-Item "$base\features\authentication\screens" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: auth/screens/"

# Old authentication/models/ (disease_event_model, tracking_model moved out)
Remove-Item "$base\features\authentication\models" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: auth/models/"

# Old personalization/controllers/ -> moved to viewmodels/
Remove-Item "$base\features\personalization\controllers" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: personalization/controllers/"

# Old personalization/screens/ -> moved to views/
Remove-Item "$base\features\personalization\screens" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: personalization/screens/"

# Old disease_event_repositary.dart (typo) - keep the new one
Remove-Item "$base\data\repositories\disease_event\disease_event_repositary.dart" -Force -ErrorAction SilentlyContinue
Write-Host "Deleted: disease_event_repositary.dart"

Write-Host "`nCleanup complete!"
