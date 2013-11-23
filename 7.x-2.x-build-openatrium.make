api = 2
core = 7.x
; Include the definition for how to build Drupal core directly, including patches:
; includes[] = drupal-org-core.make

; Drupal Core
projects[drupal][type] = core
projects[drupal][version] = 7.22
; Patch for handling inherited profiles
projects[drupal][patch][1356276] = http://drupal.org/files/1356276-make-D7-21.patch
; Patch for fixing node_access across non-required Views relationships
; NOTE: This patch is not fully reviewed/accepted yet, so review the latest status
projects[drupal][patch][1349080] = http://drupal.org/files/d7_move_access_to_join_condition-1349080-89.patch
; Patch for simpletest
projects[drupal][patch][911354] = http://drupal.org/files/911354-drupal-profile-85.patch
; Patch to allow install profile enabling to enable dependencies correctly.
projects[drupal][patch][1093420] = http://drupal.org/files/1093420-22.patch
; Patch to prevent empty titles when menu_check_access called more than once
projects[drupal][patch][1697570] = http://drupal.org/files/drupal-menu_always_load_objects-1697570-5.patch

; Download the OpenAtrium install profile and recursively build all its dependencies:
projects[openatrium][type] = profile
projects[openatrium][download][type] = git
projects[openatrium][download][branch] = 7.x-2.x
projects[openatrium][download][url] = "git@github.com:AquaticDisorder/openatrium.git"
