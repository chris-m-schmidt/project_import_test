include: "/acme_base_project/acme_base_model.model.lkml"
include: "/acme_base_project/*.view.lkml"
include: "*.view.lkml"

connection: "thelook_events"


explore: order_items_for_sales_team {
  extends: [order_items_explore]
  from: order_items_for_sales_team
  view_label: "Order Items for Sales Team"

  join: users {
    from: users
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
