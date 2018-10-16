# include: "/chris_sandbox/chris_sandbox.explore.lkml"

include: "/chris_sandbox/chris_sandbox.model.lkml"

include: "/chris_sandbox/*.view.lkml"
include: "*.view.lkml"


explore: cool {
  view_label: "Cool"
  from: cool
  extends: [order_items]

  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
