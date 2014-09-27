class osxoptions {
  include osx::global::disable_key_press_and_hold
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::disable_autocorrect
  include osx::global::tap_to_click
  include osx::global::enable_keyboard_control_access

  include osx::dock::autohide
  include osx::dock::disable

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection

  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  include osx::software_update

  class { 'osx::global::key_repeat_delay':
    delay => 30
  }

  class { 'osx::global::key_repeat_rate':
    rate => 0
  }

  class { 'osx::dock::hot_corners':
    top_right   => 'Start Screen Saver',
    bottom_left => 'Dashboard'
  }

  boxen::osx_defaults { 'Enable Airdrop on all interfaces':
    user   => $::boxen_user,
    domain => 'com.apple.NetworkBrowser',
    key    => 'BrowseAllInterfaces',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Use list view in Finder':
    user   => $::boxen_user,
    domain => 'com.apple.Finder',
    key    => 'FXPreferredViewStyle',
    value  => 'Nlsv',
    type   => 'string'
  }

  boxen::osx_defaults { 'Set sidebar icon size to small':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSTableViewDefaultSizeMode',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Jump to spot that is clicked':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleScrollerPagingBehavior',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Always show scrollbars':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'AppleShowScrollBars',
    value  => 'Always',
    type   => 'string'
  }

  boxen::osx_defaults { 'Save to disk rather than iCloud by default':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSDocumentSaveNewDocumentsToCloud',
    value  => false,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Disable Resume windows':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSQuitAlwaysKeepsWindows',
    value  => false,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Disable automatic termination of inactive apps':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'NSDisableAutomaticTermination',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Check for updates daily':
    user   => $::boxen_user,
    domain => 'com.apple.SoftwareUpdate',
    key    => 'ScheduleFrequency',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Enable right click for global settings':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.enableSecondaryClick',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Enable bottom corner right click for global settings':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.trackpad.trackpadCornerClickBehavior',
    value  => 1,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Enable right click on bluetooth trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadCornerSecondaryClick',
    value  => 2,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Enable bottom corner right click on bluetooth trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadRightClick',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Save screenshots to desktop':
    user   => $::boxen_user,
    domain => 'com.apple.screencapture',
    key    => 'location',
    value  => '${HOME}/Desktop',
    type   => 'string'
  }

  boxen::osx_defaults { 'Save screenshots in PNG format':
    user   => $::boxen_user,
    domain => 'com.apple.screencapture',
    key    => 'type',
    value  => 'png',
    type   => 'string'
  }

  boxen::osx_defaults { 'Set Finder default path type':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'NewWindowTarget',
    value  => 'PfLo',
    type   => 'string'
  }

  boxen::osx_defaults { 'Set Finder default path':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'NewWindowTargetPath',
    value  => 'file://${HOME}',
    type   => 'string'
  }

  boxen::osx_defaults { 'Disable the warning when changing a file extension':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXEnableExtensionChangeWarning',
    value  => false,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Enable spring loading for directories':
    user   => $::boxen_user,
    domain => 'NSGlobalDomain',
    key    => 'com.apple.springing.enabled',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Use plain text for new files':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'RichText',
    value  => 0,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Open files as UTF-8 in TextEdit':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'PlainTextEncoding',
    value  => 4,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Save files as UTF-8 in TextEdit':
    user   => $::boxen_user,
    domain => 'com.apple.TextEdit',
    key    => 'PlainTextEncodingForWrite',
    value  => 4,
    type   => 'integer'
  }

  boxen::osx_defaults { 'Prevent Time Machine from prompting to use new hard drives as backup volume':
    user   => $::boxen_user,
    domain => 'com.apple.TimeMachine',
    key    => 'DoNotOfferNewDisksForBackup',
    value  => true,
    type   => 'boolean'
  }

  boxen::osx_defaults { 'Show dashboard-in-overlay':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'dashboard-in-overlay',
    value  => true,
    type   => 'boolean'
  }


}
