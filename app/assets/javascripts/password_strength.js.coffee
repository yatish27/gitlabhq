overwritten_messages =
  wordSimilarToUsername: "Your password should not contain your username"

overwritten_rules =
  wordSequences: false
  
$(document).ready ->
  profileOptions = {}
  profileOptions.ui =
    showProgressBar: false
    showVerdicts: false
    showPopover: true
    showErrors: true
    showStatus: true
    errorMessages: overwritten_messages
  profileOptions.rules =
    activated: overwritten_rules

  deviseOptions = {}
  deviseOptions.common =
    usernameField: "#user_username"
  deviseOptions.ui =
    showPopover: true
    showErrors: true
    showVerdicts: false
    showProgressBar: false
    showStatus: true
    errorMessages: overwritten_messages
  deviseOptions.rules =
    activated: overwritten_rules

  $("#user_password_profile").pwstrength profileOptions
  $("#user_password_sign_up").pwstrength deviseOptions
  $("#user_password_recover").pwstrength deviseOptions
