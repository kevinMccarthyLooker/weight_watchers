connection: "prod-data-playground-std-bq"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

persist_for: "24 hours"

label: "Weight Watchers"

# explore: search {
#   join: payload_browsedDetails {
#     sql: LEFT JOIN UNNEST(search.payload_browsedDetails) as payload_browsedDetails ;;
#     relationship: one_to_many
#   }
#   join: payload_trackedDetails {
#     sql: LEFT JOIN UNNEST(search.payload_trackedDetails) as payload_trackedDetails ;;
#     relationship: one_to_many
#   }
# }
#
# explore: session__searchterm_summary {fields:[ALL_FIELDS*,-session__searchterm_summary.browse_was_tracked_percent]}
#
#
# explore: sessions {
#   from: search
#   join: payload_browsedDetails {
#     sql: LEFT JOIN UNNEST(sessions.payload_browsedDetails) as payload_browsedDetails ;;
#     relationship: one_to_many
#   }
#   join: session__searchterm_summary {
#     sql_on: ${sessions.payload_sessionId}=${session__searchterm_summary.session_id} and ${session__searchterm_summary.term}=${payload_browsedDetails.payload_browsedDetails__searchTerm} ;;
#     relationship: one_to_one
#   }
# }

explore: browse_and_tracks {}
