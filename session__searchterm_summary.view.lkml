#orienting this view for use in the browse context
view: session__searchterm_summary {
  derived_table: {
    sql:
    SELECT
    payload_trackedDetails.searchTerm AS term,
    search.payload_sessionId AS session_id,
    COUNT(*) AS count_trackedDetail_records
    FROM `wwi-data-playground-3.wwi_processed_data_std_views.core_search_service_searchAnalytics`  AS search
    LEFT JOIN UNNEST(search.payload_trackedDetails) as payload_trackedDetails
    GROUP BY 1,2;;
    sql_trigger_value: select current_date() ;;
  }

  dimension: primary_key_field {
    primary_key: yes
    sql: concat(${session_id},${term})  ;; #push concat operation to derived table definition?
  }

  dimension: session_id {hidden:yes}

  dimension: term {hidden:yes}

#   dimension: count_trackedDetail_records {
#     label: "Times Tracked"
#     type: number
#     sql: ${TABLE}.count_trackedDetail_records ;;
#   }
#
#   measure: terms_tracked{
#     description: "Unique search terms tracked in each session"
#     type: count
#   }
#
#   measure: total_times_tracked {
#     type: sum
#     sql: ${count_trackedDetail_records} ;;
#   }

  dimension: is_tracked {
    label: "Term Tracked In Session"
    type: yesno
    sql: ${session_id} is not null ;;
  }

  measure: browse_was_tracked {
    type: count
#     sql: count(*) ;;
    filters: {
      field: is_tracked
      value: "Yes"
    }
  }

  measure: browse_was_tracked_percent{
    type: number
    sql: ${browse_was_tracked}*1.0/nullif(${payload_browsedDetails.browsed_count},0) ;;
    value_format_name: percent_1
  }
}
