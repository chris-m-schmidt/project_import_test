include: "/acme_base_project/acme_base_model.model.lkml"
include: "/acme_base_project/*.view.lkml"
include: "*.view.lkml"

explore: order_items_extended {
  extends: [order_items]
  from: order_items_extended
  view_label: "Order Items Extended"

  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
