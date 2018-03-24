view: browse_and_tracks {
  derived_table: {
    sql: with browsed_terms as
      (
      SELECT
      sessions.headers_id,
      sessions.headers_messageTimestamp as messageTimestamp,
      sessions.payload_exitMode as exitMode,
      sessions.payload_sessionId as session_id,
      sessions.payload_timeSpent as timeSpent,
      sessions.payload_appVersion as appVersion,
      payload_browsedDetails.defaultPortionDescription,
      payload_browsedDetails.searchPosition,
      payload_browsedDetails.defaultPortionId,
      payload_browsedDetails.defaultPortionQuantity,
      payload_browsedDetails.foodId,
      payload_browsedDetails.searchTerm
      FROM `wwi-data-playground-3.wwi_processed_data_std_views.core_search_service_searchAnalytics`  AS sessions
      LEFT JOIN UNNEST(sessions.payload_browsedDetails) as payload_browsedDetails
      where
      ((payload_browsedDetails.searchTerm IS NOT NULL AND LENGTH(payload_browsedDetails.searchTerm) <> 0 ))
/*     and partitions_year='2018' and partitions_month='03' and partitions_day='01'
*/
      GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12
      )
      ,
      tracked_terms as
      (
      SELECT
      sessions.payload_sessionId as session_id,
      payload_trackedDetails.searchTerm,
      min(payload_trackedDetails.searchPosition) as min_search_position,
      count(*) as times_tracked
      FROM `wwi-data-playground-3.wwi_processed_data_std_views.core_search_service_searchAnalytics`  AS sessions
      LEFT JOIN UNNEST(sessions.payload_trackedDetails) as payload_trackedDetails
      where
      payload_trackedDetails.searchTerm is not null
/*      and sessions.partitions_year='2018' and sessions.partitions_month='03' and sessions.partitions_day='01'
*/
      GROUP BY 1,2
      )

      SELECT
      browsed_terms.headers_id,
      browsed_terms.messageTimestamp,
      EXTRACT(HOUR FROM TIMESTAMP(FORMAT_TIMESTAMP('%F %T', browsed_terms.messageTimestamp , 'America/New_York'))) as hour_EST,
      DATE_DIFF(
        EXTRACT(date from TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York'))),
        EXTRACT(date from TIMESTAMP(FORMAT_TIMESTAMP('%F %T', messageTimestamp, 'America/New_York')))
        ,day
      ) days_ago
      ,
      DATE_DIFF(
        EXTRACT(date from TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York'))),
        EXTRACT(date from (TIMESTAMP(FORMAT_TIMESTAMP('%F %T', TIMESTAMP_ADD(TIMESTAMP_ADD(TIMESTAMP_TRUNC(CAST(TIMESTAMP_TRUNC(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York')), DAY) AS TIMESTAMP), DAY), INTERVAL (0 - CAST((CASE WHEN (EXTRACT(DAYOFWEEK FROM TIMESTAMP_TRUNC(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York')), DAY)) - 1) - 1 + 7 < 0 THEN -1 * (ABS((EXTRACT(DAYOFWEEK FROM TIMESTAMP_TRUNC(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York')), DAY)) - 1) - 1 + 7) - (ABS(7) * CAST(FLOOR(ABS(((EXTRACT(DAYOFWEEK FROM TIMESTAMP_TRUNC(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York')), DAY)) - 1) - 1 + 7) / (7))) AS INT64))) ELSE ABS((EXTRACT(DAYOFWEEK FROM TIMESTAMP_TRUNC(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York')), DAY)) - 1) - 1 + 7) - (ABS(7) * CAST(FLOOR(ABS(((EXTRACT(DAYOFWEEK FROM TIMESTAMP_TRUNC(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', CURRENT_TIMESTAMP(), 'America/New_York')), DAY)) - 1) - 1 + 7) / (7))) AS INT64)) END) AS INT64)) DAY), INTERVAL (0 * 7) DAY)), 'America/New_York')))
      ,day
      ) current_days_since_current_week_begin,
      browsed_terms.exitMode,
      browsed_terms.session_id,
      browsed_terms.timeSpent,
      browsed_terms.appVersion,
      browsed_terms.defaultPortionDescription,
      browsed_terms.searchPosition,
      browsed_terms.defaultPortionId,
      browsed_terms.defaultPortionQuantity,
      browsed_terms.foodId,
      browsed_terms.searchTerm,
      case when tracked_terms.session_id is not null then 1 else 0 end as was_tracked_in_session,
      tracked_terms.min_search_position,
      tracked_terms.times_tracked
      from
      browsed_terms left join
      tracked_terms on browsed_terms.session_id=tracked_terms.session_id and browsed_terms.searchTerm=tracked_terms.searchTerm
       ;;
      persist_for: "24 hours"
  }

  dimension: headers_id {}

  dimension_group: message_timestamp {
    label: "Session Time"
    type: time
    timeframes: [raw,time,hour_of_day,day_of_week,date,week,month,year]
    sql: ${TABLE}.messageTimestamp ;;
  }

  dimension: days_ago{
    type: number
  }

  dimension: current_days_since_current_week_begin {
    hidden: yes
    type: number
  }

  dimension: weeks_ago {
    type: number
    sql: FLOOR((${days_ago}-${current_days_since_current_week_begin}-1)/7)+1 ;;
  }

  dimension: last_week {
    type: yesno
    sql: ${weeks_ago}=1 ;;
  }


  dimension: session_time_hour_of_day_tier {
    type: tier
#     sql: ${message_timestamp_hour_of_day} ;;
    sql: ${TABLE}.hour_EST ;;
    tiers: [0,3,6,9,12,15,18,21,24]
    style: interval
  }

  dimension: exitMode {}

  dimension: session_id {}

  dimension: timeSpent {
    type: number
  }

  dimension: appVersion {}

  dimension: timeSpent_tier {
    type: tier
    tiers: [50,100,150,200,250,300,350,400]
    sql: ${timeSpent} ;;
    style: relational
  }

  dimension: defaultPortionDescription {}

  dimension: searchPosition {
    type: number
  }

  dimension: searchPosition_tier {
    type: tier
    tiers: [1,2,3,4,5,10,20]
    sql: ${searchPosition} ;;
    style: integer
  }

  dimension: defaultPortionId {}

  dimension: defaultPortionQuantity {
    type: number
  }

  dimension: foodId {}

  dimension: searchTerm {}

  dimension: was_tracked_in_session {
    type: yesno
    sql: ${TABLE}.was_tracked_in_session=1 ;;
  }

  dimension: min_search_position {
    label: "Min Tracked Search"
    type: number
  }

  dimension: times_tracked {
    type: number
  }

  measure: browsed_count {
    type: count
  }
  measure: browsed_count_last_week {
    type: count
    filters: {field: last_week value:"Yes"}
  }

  measure: browsed_term_was_tracked_count{
    type: count
    filters: {
      field: was_tracked_in_session
      value: "Yes"
    }
  }

  measure: total_times_tracked {
    type: sum
    sql: ${times_tracked} ;;
  }

  measure: percent_tracked {
    type: number
    sql: ${total_times_tracked}*1.0/nullif(${browsed_count},0) ;;
    value_format_name: percent_1
  }

  measure: total_time_spent {
    type: sum
    sql: ${timeSpent}pent} ;;
  }
}
