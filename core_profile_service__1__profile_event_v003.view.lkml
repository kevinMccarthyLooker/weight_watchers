view: core_profile_service__1__profile_event_v003 {
  sql_table_name: wwi_processed_data.core_profile_service__1__ProfileEvent_v003 ;;

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

view: core_profile_service__1__ProfileEvent_v003__partitions {
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

view: core_profile_service__1__ProfileEvent_v003__headers {
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

view: core_profile_service__1__ProfileEvent_v003__payload {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: acquisition_id {
    type: string
    sql: ${TABLE}.acquisitionId ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
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

  dimension_group: current_timestamp {
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
    sql: ${TABLE}.currentTimestamp ;;
  }

  dimension: dpt_adjustment {
    type: number
    sql: ${TABLE}.dptAdjustment ;;
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

  dimension: has_completed_onboarding {
    type: yesno
    sql: ${TABLE}.hasCompletedOnboarding ;;
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

  dimension_group: registration {
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
    sql: ${TABLE}.registrationDate ;;
  }

  dimension: rollover {
    type: yesno
    sql: ${TABLE}.rollover ;;
  }

  dimension: smart_points_activation_date_override {
    type: string
    sql: ${TABLE}.smartPointsActivationDateOverride ;;
  }

  dimension: start_weight {
    type: number
    sql: ${TABLE}.startWeight ;;
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

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
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

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_loss_mode {
    type: string
    sql: ${TABLE}.weightLossMode ;;
  }

  dimension: wpa_adjustment {
    type: number
    sql: ${TABLE}.wpaAdjustment ;;
  }

  dimension: wwuuid {
    type: string
    sql: ${TABLE}.wwuuid ;;
  }

  dimension: zip_work {
    type: string
    sql: ${TABLE}.zipWork ;;
  }
}

view: core_profile_service__1__ProfileEvent_v003__payload__phone {
  dimension: cell {
    type: string
    sql: ${TABLE}.cell ;;
  }

  dimension: home {
    type: string
    sql: ${TABLE}.home ;;
  }
}

view: core_profile_service__1__ProfileEvent_v003__payload__identity {
  dimension: classic {
    type: number
    sql: ${TABLE}.classic ;;
  }

  dimension: facebook {
    type: number
    sql: ${TABLE}.facebook ;;
  }
}

view: core_profile_service__1__ProfileEvent_v003__payload__additional_settings {
  dimension: another {
    type: string
    sql: ${TABLE}.another ;;
  }

  dimension: classic_settings_client_id {
    type: string
    sql: ${TABLE}.classicSettingsClientId ;;
  }

  dimension: classic_settings_client_name {
    type: string
    sql: ${TABLE}.classicSettingsClientName ;;
  }

  dimension: classic_settings_client_unique_id {
    type: string
    sql: ${TABLE}.classicSettingsClientUniqueID ;;
  }

  dimension: classic_settings_contract_no {
    type: string
    sql: ${TABLE}.classicSettingsContractNo ;;
  }

  dimension: classic_settings_employee_id {
    type: string
    sql: ${TABLE}.classicSettingsEmployeeId ;;
  }

  dimension: classic_settings_is_fran_flag {
    type: string
    sql: ${TABLE}.classicSettingsIsFranFlag ;;
  }

  dimension: classic_settings_life_time_flag {
    type: string
    sql: ${TABLE}.classicSettingsLifeTimeFlag ;;
  }

  dimension: classic_settings_monthly_pass_id {
    type: string
    sql: ${TABLE}.classicSettingsMonthlyPassId ;;
  }

  dimension: classic_settings_user_personal_id {
    type: string
    sql: ${TABLE}.classicSettingsUserPersonalId ;;
  }

  dimension: email_preference {
    type: string
    sql: ${TABLE}.emailPreference ;;
  }

  dimension: has_completed_activity_assessment {
    type: string
    sql: ${TABLE}.hasCompletedActivityAssessment ;;
  }

  dimension: has_completed_personal_assessment {
    type: string
    sql: ${TABLE}.hasCompletedPersonalAssessment ;;
  }

  dimension: has_seen_personal_assessment {
    type: string
    sql: ${TABLE}.hasSeenPersonalAssessment ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.other ;;
  }
}

view: core_profile_service__1__ProfileEvent_v003__payload__email {
  dimension: personal {
    type: string
    sql: ${TABLE}.personal ;;
  }
}

view: core_profile_service__1__ProfileEvent_v003__payload__address__shipping {
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

view: core_profile_service__1__ProfileEvent_v003__payload__address__home {
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

view: core_profile_service__1__ProfileEvent_v003__payload__address {
  dimension: home {
    hidden: yes
    sql: ${TABLE}.home ;;
  }

  dimension: shipping {
    hidden: yes
    sql: ${TABLE}.shipping ;;
  }
}
