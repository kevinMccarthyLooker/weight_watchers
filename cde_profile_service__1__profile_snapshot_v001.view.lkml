view: cde_profile_service__1__profile_snapshot_v001 {
  sql_table_name: wwi_processed_data.cde_profile_service__1__ProfileSnapshot_v001 ;;

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

view: cde_profile_service__1__ProfileSnapshot_v001__partitions {
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

view: cde_profile_service__1__ProfileSnapshot_v001__headers {
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

view: cde_profile_service__1__ProfileSnapshot_v001__payload {
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

  dimension: dpt_adjustment {
    type: number
    sql: ${TABLE}.dptAdjustment ;;
  }

  dimension: email {
    hidden: yes
    sql: ${TABLE}.email ;;
  }

  dimension_group: enrollment {
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

  dimension: localdate {
    type: string
    sql: ${TABLE}.localdate ;;
  }

  dimension: newsletter_option {
    type: yesno
    sql: ${TABLE}.newsletterOption ;;
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

  dimension: smart_points_activation_date {
    type: string
    sql: ${TABLE}.smartPointsActivationDate ;;
  }

  dimension: swapping_mode {
    type: string
    sql: ${TABLE}.swappingMode ;;
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

  dimension: weight_loss_mode {
    type: string
    sql: ${TABLE}.weightLossMode ;;
  }

  dimension: wpa_adjustment {
    type: number
    sql: ${TABLE}.wpaAdjustment ;;
  }
}

view: cde_profile_service__1__ProfileSnapshot_v001__payload__identity {
  dimension: classic {
    type: number
    sql: ${TABLE}.classic ;;
  }
}

view: cde_profile_service__1__ProfileSnapshot_v001__payload__additional_settings {
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

  dimension: completed_smart_point_assessment {
    type: string
    sql: ${TABLE}.completedSmartPointAssessment ;;
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
}

view: cde_profile_service__1__ProfileSnapshot_v001__payload__email {
  dimension: personal {
    type: string
    sql: ${TABLE}.personal ;;
  }
}

view: cde_profile_service__1__ProfileSnapshot_v001__payload__address__shipping {
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: extended_address {
    type: string
    sql: ${TABLE}.extendedAddress ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
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

view: cde_profile_service__1__ProfileSnapshot_v001__payload__address__home {
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: extended_address {
    type: string
    sql: ${TABLE}.extendedAddress ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
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

view: cde_profile_service__1__ProfileSnapshot_v001__payload__phone {
  dimension: home {
    type: string
    sql: ${TABLE}.home ;;
  }
}

view: cde_profile_service__1__ProfileSnapshot_v001__payload__address {
  dimension: home {
    hidden: yes
    sql: ${TABLE}.home ;;
  }

  dimension: shipping {
    hidden: yes
    sql: ${TABLE}.shipping ;;
  }
}
