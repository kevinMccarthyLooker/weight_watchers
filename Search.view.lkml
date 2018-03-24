view: search {
# sql_table_name: `wwi-data-playground-3.wwi_processed_data_std_views.core_search_service_searchAnalytics` ;;
sql_table_name: `wwi-data-playground-3.wwi_processed_data_std_views.core_search_service_searchAnalytics` ;;
view_label: "Sessions?"
  dimension: headers_action{label:"headers_action" sql:${TABLE}.headers_action;;}
  dimension: headers_id{label:"headers_id" sql:${TABLE}.headers_id;;
    primary_key: yes
    }
  dimension_group: headers_messageTimestamp{label:"headers_messageTimestamp" sql:${TABLE}.headers_messageTimestamp;; type:time timeframes: [raw,time,date,month,year]}
  dimension: headers_type{label:"headers_type" sql:${TABLE}.headers_type;;}
  dimension: partitions_day{label:"partitions_day" sql:${TABLE}.partitions_day;;}
  dimension: partitions_hour{label:"partitions_hour" sql:${TABLE}.partitions_hour;;}
  dimension: partitions_month{label:"partitions_month" sql:${TABLE}.partitions_month;;}
  dimension: partitions_year{label:"partitions_year" sql:${TABLE}.partitions_year;;}
  dimension: payload_appVersion{label:"payload_appVersion" sql:${TABLE}.payload_appVersion;;}
  dimension: payload_context{label:"payload_context" sql:${TABLE}.payload_context;;}
  dimension: payload_exitMode{label:"payload_exitMode" sql:${TABLE}.payload_exitMode;;}
  dimension: payload_fullQuery{label:"payload_fullQuery" sql:${TABLE}.payload_fullQuery;;}
#   dimension: payload_platform{label:"payload_platform" sql:${TABLE}.payload_platform;;}
  dimension: payload_sessionId{label:"payload_sessionId" sql:${TABLE}.payload_sessionId;;}
#   dimension: payload_timeSpent{label:"payload_timeSpent" sql:${TABLE}.payload_timeSpent;; type:number}
  dimension: payload_uuid{label:"payload_uuid" sql:${TABLE}.payload_uuid;;}

  measure: search_count {type:count}


  dimension: payload_platform{label:"payload_platform" sql:${TABLE}.payload_platform;;hidden:yes}#all ios as of 3/23
  dimension: payload_timeSpent{label:"payload_timeSpent" sql:${TABLE}.payload_timeSpent;; type:number hidden:yes}
  dimension: time_spent_tier {
    type: tier
    sql: ${payload_timeSpent} ;;
    tiers: [50,100,150,200,250,300,350,400]
    style: relational
  }
  measure: time_spent {
    type: sum
    sql: ${payload_timeSpent} ;;
  }


#   measure: percent_tracked {
#     type: number
#     sql: ${payload_trackedDetails.tracked_count}*1.0/nullif(${search_count},0) ;;
#     value_format_name: percent_1
#   }
#
#   measure: percent_browsed {
#     type: number
#     sql: ${payload_browsedDetails.browsed_count}*1.0/nullif(${search_count},0) ;;
#     value_format_name: percent_1
#   }

  dimension: payload_browsedDetails {hidden:yes}
  dimension: payload_trackedDetails {hidden:yes}
}

view: payload_browsedDetails {
  dimension: primary_key {
    sql:CONCAT(${payload_browsedDetails__foodId},${payload_browsedDetails__versionId},STRING(${payload_browsedDetails__timestamp_raw}));;
    primary_key:yes
    hidden: yes
  }

  dimension: payload_browsedDetails__context{label:"context" sql:${TABLE}.context;; group_label:"payload_browsedDetails"}
  dimension: payload_browsedDetails__defaultPortionDescription{label:"defaultPortionDescription" sql:${TABLE}.defaultPortionDescription;; group_label:"payload_browsedDetails"}
  dimension: payload_browsedDetails__defaultPortionId{label:"defaultPortionId" sql:${TABLE}.defaultPortionId;; group_label:"payload_browsedDetails"}
  dimension: payload_browsedDetails__defaultPortionQuantity{label:"defaultPortionQuantity" sql:${TABLE}.defaultPortionQuantity;; group_label:"payload_browsedDetails" type:number}
  dimension: payload_browsedDetails__foodId{label:"foodId" sql:${TABLE}.foodId;; group_label:"payload_browsedDetails"}
#   dimension: payload_browsedDetails__searchPosition{label:"searchPosition" sql:${TABLE}.searchPosition;; group_label:"payload_browsedDetails" type:number}
  dimension: payload_browsedDetails__searchTerm{label:"searchTerm" sql:${TABLE}.searchTerm;; group_label:"payload_browsedDetails"}
  dimension_group: payload_browsedDetails__timestamp{label:"timestamp" sql:${TABLE}.timestamp;; group_label:"payload_browsedDetails" type:time timeframes: [raw,time,date,week,month,year]}
  dimension: payload_browsedDetails__versionId{label:"versionId" sql:${TABLE}.versionId;; group_label:"payload_browsedDetails"}

#   measure: browsed_count {type:count}
  measure: browsed_count {
    type: number
    sql: count(*) ;;
  }

  dimension: payload_browsedDetails__searchPosition{label:"searchPosition" sql:${TABLE}.searchPosition;; group_label:"payload_browsedDetails" type:number hidden:yes}
  dimension: search_position_tier {
    type: tier
    sql: ${payload_browsedDetails__searchPosition} ;;
    tiers: [1,2,3,4,5,10,20]
    style: relational
  }

}

view: payload_trackedDetails {
  dimension: primary_key {
    sql:CONCAT(${payload_trackedDetails__foodId},${payload_trackedDetails__versionId},STRING(${payload_trackedDetails__timestamp_raw}));;
    primary_key:yes
    hidden: yes
  }

  dimension: payload_trackedDetails__activityId{label:"activityId" sql:${TABLE}.activityId;; group_label:"payload_trackedDetails"}
  dimension: payload_trackedDetails__context{label:"context" sql:${TABLE}.context;; group_label:"payload_trackedDetails"}
  dimension: payload_trackedDetails__defaultPortionDescription{label:"defaultPortionDescription" sql:${TABLE}.defaultPortionDescription;; group_label:"payload_trackedDetails"}
  dimension: payload_trackedDetails__defaultPortionId{label:"defaultPortionId" sql:${TABLE}.defaultPortionId;; group_label:"payload_trackedDetails"}
  dimension: payload_trackedDetails__defaultPortionQuantity{label:"defaultPortionQuantity" sql:${TABLE}.defaultPortionQuantity;; group_label:"payload_trackedDetails" type:number}
  dimension: payload_trackedDetails__foodId{label:"foodId" sql:${TABLE}.foodId;; group_label:"payload_trackedDetails"}
  dimension: payload_trackedDetails__searchPosition{label:"searchPosition" sql:${TABLE}.searchPosition;; group_label:"payload_trackedDetails" type:number}
  dimension: payload_trackedDetails__searchTerm{label:"searchTerm" sql:${TABLE}.searchTerm;; group_label:"payload_trackedDetails"}
  dimension_group: payload_trackedDetails__timestamp{label:"timestamp" sql:${TABLE}.timestamp;; group_label:"payload_trackedDetails" type:time timeframes: [raw,time,date,month,year]}
  dimension: payload_trackedDetails__trackedPortionDescription{label:"trackedPortionDescription" sql:${TABLE}.trackedPortionDescription;; group_label:"payload_trackedDetails"}
  dimension: payload_trackedDetails__trackedPortionId{label:"trackedPortionId" sql:${TABLE}.trackedPortionId;; group_label:"payload_trackedDetails"}
  dimension: payload_trackedDetails__trackedQuantity{label:"trackedQuantity" sql:${TABLE}.trackedQuantity;; group_label:"payload_trackedDetails" type:number}
  dimension: payload_trackedDetails__versionId{label:"versionId" sql:${TABLE}.versionId;; group_label:"payload_trackedDetails"}

  measure: tracked_count {type:count}
}
