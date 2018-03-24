view: core_profile_service__1__ProfileEvent_v020 {
  sql_table_name: wwi_processed_data.core_profile_service__1__ProfileEvent_v020 ;;

  dimension: derived_id {
    type: string
    sql: concat(${headers},${partitions}) ;;
    primary_key: yes
  }

  dimension: headers {
    hidden: yes
    sql: ${TABLE}.headers ;;
  }

  dimension: partitions {
    hidden: yes
    sql: ${TABLE}.partitions ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: core_profile_service__1__ProfileEvent_v020__partitions {
  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.hour ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__headers {
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}.messageId ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: acquisition_id {
    type: string
    sql: ${TABLE}.acquisitionId ;;
  }

  dimension: additional_settings {
    hidden: yes
    sql: ${TABLE}.additionalSettings ;;
  }

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}.avatarUrl ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: classic_country {
    type: string
    sql: ${TABLE}.classicCountry ;;
  }

  dimension: classic_locale {
    type: string
    sql: ${TABLE}.classicLocale ;;
  }

  dimension: communication_preferences {
    type: string
    sql: ${TABLE}.communicationPreferences ;;
  }

  dimension: email {
    hidden: yes
    sql: ${TABLE}.email ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${TABLE}.enrollmentDate ;;
  }

  dimension: entitlements {
    type: string
    sql: ${TABLE}.entitlements ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension_group: freestyle_activation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.freestyleActivationDate ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: goal_weight {
    type: number
    sql: ${TABLE}.goalWeight ;;
  }

  dimension: goal_weight_units {
    type: string
    sql: ${TABLE}.goalWeightUnits ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: identity {
    hidden: yes
    sql: ${TABLE}.identity ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: middle_initial {
    type: string
    sql: ${TABLE}.middleInitial ;;
  }

  dimension: newletter_option {
    type: yesno
    sql: ${TABLE}.newletterOption ;;
  }

  dimension: newsletter_option {
    type: yesno
    sql: ${TABLE}.newsletterOption ;;
  }

  dimension: nursing_mother {
    type: string
    sql: ${TABLE}.nursingMother ;;
  }

  dimension: opt_in {
    type: yesno
    sql: ${TABLE}.optIn ;;
  }

  dimension: phone {
    hidden: yes
    sql: ${TABLE}.phone ;;
  }

  dimension: points_program {
    type: string
    sql: ${TABLE}.pointsProgram ;;
  }

  dimension: preferred_height_weight_units {
    type: string
    sql: ${TABLE}.preferredHeightWeightUnits ;;
  }

  dimension: referrer_site {
    type: string
    sql: ${TABLE}.referrerSite ;;
  }

  dimension: rollover {
    type: yesno
    sql: ${TABLE}.rollover ;;
  }

  dimension: send_registeration_email {
    type: yesno
    sql: ${TABLE}.sendRegisterationEmail ;;
  }

  dimension: swapping_mode {
    type: string
    sql: ${TABLE}.swappingMode ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: tracking_mode {
    type: string
    sql: ${TABLE}.trackingMode ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  dimension: weigh_in_day {
    type: string
    sql: ${TABLE}.weighInDay ;;
  }

  dimension: zip_work {
    type: string
    sql: ${TABLE}.zipWork ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload__identity {
  dimension: classic {
    type: number
    sql: ${TABLE}.classic ;;
  }

  dimension: facebook {
    type: number
    sql: ${TABLE}.facebook ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload__additional_settings {
  dimension: classic_settings_is_fran_flag {
    type: string
    sql: ${TABLE}.classicSettingsIsFranFlag ;;
  }

  dimension: classic_settings_life_time_flag {
    type: string
    sql: ${TABLE}.classicSettingsLifeTimeFlag ;;
  }

  dimension: classic_settings_user_personal_id {
    type: string
    sql: ${TABLE}.classicSettingsUserPersonalId ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload__email {
  dimension: personal {
    type: string
    sql: ${TABLE}.personal ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload__address__shipping {
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: extended_address {
    type: string
    sql: ${TABLE}.extendedAddress ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: post_office_box {
    type: string
    sql: ${TABLE}.postOfficeBox ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.streetAddress ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload__address__home {
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: extended_address {
    type: string
    sql: ${TABLE}.extendedAddress ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: post_office_box {
    type: string
    sql: ${TABLE}.postOfficeBox ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.streetAddress ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload__phone {
  dimension: cell {
    type: string
    sql: ${TABLE}.cell ;;
  }

  dimension: home {
    type: string
    sql: ${TABLE}.home ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020__payload__address {
  dimension: home {
    hidden: yes
    sql: ${TABLE}.home ;;
  }

  dimension: shipping {
    hidden: yes
    sql: ${TABLE}.shipping ;;
  }
}

view: core_profile_service__1__ProfileEvent_v020_km {
  sql_table_name: wwi_processed_data.core_profile_service__1__ProfileEvent_v020 ;;

  dimension: headers {
    hidden: yes
    sql: ${TABLE}.headers ;;
  }

  dimension: partitions {
    hidden: yes
    sql: ${TABLE}.partitions ;;
  }

  dimension: payload {
    hidden: yes
    sql: ${TABLE}.payload ;;
  }

  dimension: day {
    type: string
    sql: ${partitions}.day ;;
  }

  dimension: hour {
    type: string
    sql: ${partitions}.hour ;;
  }

  dimension: month {
    type: string
    sql: ${partitions}.month ;;
  }

  dimension: year {
    type: string
    sql: ${partitions}.year ;;
  }

  dimension: action {
    type: string
    sql: ${headers}.action ;;
  }

  dimension: message_id {
    type: string
    sql: ${headers}.messageId ;;
  }

  dimension: source {
    type: string
    sql: ${headers}.source ;;
  }

  dimension: id {
    primary_key: yes
    type: string
    sql: ${payload}.id ;;
  }

  dimension: acquisition_id {
    type: string
    sql: ${payload}.acquisitionId ;;
  }

  dimension: additional_settings {
    hidden: yes
    sql: ${payload}.additionalSettings ;;
  }

  dimension: address {
    hidden: yes
    sql: ${payload}.address ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${payload}.avatarUrl ;;
  }

  dimension: birth_date {
    type: string
    sql: ${payload}.birthDate ;;
  }

  dimension: classic_country {
    type: string
    sql: ${payload}.classicCountry ;;
  }

  dimension: classic_locale {
    type: string
    sql: ${payload}.classicLocale ;;
  }

  dimension: communication_preferences {
    type: string
    sql: ${payload}.communicationPreferences ;;
  }

  dimension: email {
    hidden: yes
    sql: ${payload}.email ;;
  }

  dimension: enrollment_date {
    type: string
    sql: ${payload}.enrollmentDate ;;
  }

  dimension: entitlements {
    type: string
    sql: ${payload}.entitlements ;;
  }

  dimension: first_name {
    type: string
    sql: ${payload}.firstName ;;
  }

  dimension_group: freestyle_activation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${payload}.freestyleActivationDate ;;
  }

  dimension: gender {
    type: string
    sql: ${payload}.gender ;;
  }

  dimension: goal_weight {
    type: number
    sql: ${payload}.goalWeight ;;
  }

  dimension: goal_weight_units {
    type: string
    sql: ${payload}.goalWeightUnits ;;
  }

  dimension: height {
    type: number
    sql: ${payload}.height ;;
  }

  dimension: identity {
    hidden: yes
    sql: ${payload}.identity ;;
  }

  dimension: last_name {
    type: string
    sql: ${payload}.lastName ;;
  }

  dimension: middle_initial {
    type: string
    sql: ${payload}.middleInitial ;;
  }

  dimension: newletter_option {
    type: yesno
    sql: ${payload}.newletterOption ;;
  }

  dimension: newsletter_option {
    type: yesno
    sql: ${payload}.newsletterOption ;;
  }

  dimension: nursing_mother {
    type: string
    sql: ${payload}.nursingMother ;;
  }

  dimension: opt_in {
    type: yesno
    sql: ${payload}.optIn ;;
  }

  dimension: phone {
    hidden: yes
    sql: ${payload}.phone ;;
  }

  dimension: points_program {
    type: string
    sql: ${payload}.pointsProgram ;;
  }

  dimension: preferred_height_weight_units {
    type: string
    sql: ${payload}.preferredHeightWeightUnits ;;
  }

  dimension: referrer_site {
    type: string
    sql: ${payload}.referrerSite ;;
  }

  dimension: rollover {
    type: yesno
    sql: ${payload}.rollover ;;
  }

  dimension: send_registeration_email {
    type: yesno
    sql: ${payload}.sendRegisterationEmail ;;
  }

  dimension: swapping_mode {
    type: string
    sql: ${payload}.swappingMode ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${payload}.timestamp ;;
  }

  dimension: title {
    type: string
    sql: ${payload}.title ;;
  }

  dimension: tracking_mode {
    type: string
    sql: ${payload}.trackingMode ;;
  }

  dimension: user_id {
    type: string
    sql: ${payload}.userId ;;
  }

  dimension: username {
    type: string
    sql: ${payload}.username ;;
  }

  dimension: version {
    type: number
    sql: ${payload}.version ;;
  }

  dimension: weigh_in_day {
    type: string
    sql: ${payload}.weighInDay ;;
  }

  dimension: zip_work {
    type: string
    sql: ${payload}.zipWork ;;
  }

  dimension: classic {
    type: number
    sql: ${identity}.classic ;;
  }

  dimension: facebook {
    type: number
    sql: ${identity}.facebook ;;
  }

  dimension: classic_settings_is_fran_flag {
    type: string
    sql: ${additional_settings}.classicSettingsIsFranFlag ;;
  }

  dimension: classic_settings_life_time_flag {
    type: string
    sql: ${additional_settings}.classicSettingsLifeTimeFlag ;;
  }

  dimension: classic_settings_user_personal_id {
    type: string
    sql: ${additional_settings}.classicSettingsUserPersonalId ;;
  }

  dimension: personal {
    type: string
    sql: ${email}.personal ;;
  }

  dimension: shipping__country {
    type: string
    map_layer_name: countries
    sql: ${shipping}.country ;;
  }

  dimension: shipping__extended_address {
    type: string
    sql: ${shipping}.extendedAddress ;;
  }

  dimension: shipping__latitude {
    type: number
    sql: ${shipping}.latitude ;;
  }

  dimension: shipping__locality {
    type: string
    sql: ${shipping}.locality ;;
  }

  dimension: shipping__longitude {
    type: number
    sql: ${shipping}.longitude ;;
  }

  dimension: shipping__post_office_box {
    type: string
    sql: ${shipping}.postOfficeBox ;;
  }

  dimension: shipping__postal_code {
    type: string
    sql: ${shipping}.postalCode ;;
  }

  dimension: shipping__region {
    type: string
    sql: ${shipping}.region ;;
  }

  dimension: shipping__street_address {
    type: string
    sql: ${shipping}.streetAddress ;;
  }

  dimension: home__country {
    type: string
    map_layer_name: countries
    sql: ${home}.country ;;
  }

  dimension: home__extended_address {
    type: string
    sql: ${home}.extendedAddress ;;
  }

  dimension: home__latitude {
    type: number
    sql: ${home}.latitude ;;
  }

  dimension: home__locality {
    type: string
    sql: ${home}.locality ;;
  }

  dimension: home__longitude {
    type: number
    sql: ${home}.longitude ;;
  }

  dimension: home__post_office_box {
    type: string
    sql: ${home}.postOfficeBox ;;
  }

  dimension: home__postal_code {
    type: string
    sql: ${home}.postalCode ;;
  }

  dimension: home__region {
    type: string
    sql: ${home}.region ;;
  }

  dimension: home__street_address {
    type: string
    sql: ${home}.streetAddress ;;
  }

  dimension: cell {
    type: string
    sql: ${phone}.cell ;;
  }

  dimension: phone__home {
    type: string
    sql: ${phone}.home ;;
  }

  dimension: home {
    hidden: yes
    sql: ${address}.home ;;
  }

  dimension: shipping {
    hidden: yes
    sql: ${address}.shipping ;;
  }
}
