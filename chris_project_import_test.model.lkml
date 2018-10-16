# connection: "thelook_events_redshift"

include: "/chris_sandbox/*.view.lkml"
include: "/chris_sandbox/chris_sandbox.explore.lkml"
# include: "*.view.lkml"

# explore: order_items {
#   join: users {
#     type: left_outer
#     sql_on: ${order_items.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
#
#   join: inventory_items {
#     type: left_outer
#     sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
#     relationship: many_to_one
#   }
# }
