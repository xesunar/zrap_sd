@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Schedule Line Interface View'

define view entity zrap_i_sched_ln
  as select from zrap_t_sched_ln
  association to parent zes_i_sales_itm as _SalesItem
    on $projection.OrderId  = _SalesItem.OrderId
   and $projection.ItemNo   = _SalesItem.ItemNo
{
  key order_id            as OrderId,
  key item_no             as ItemNo,
  key schedule_line_no    as ScheduleLineNo,
      requested_del_date  as RequestedDelDate,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      scheduled_qty       as ScheduledQty,
      uom                 as Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      confirmed_qty       as ConfirmedQty,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      delivered_qty       as DeliveredQty,
      delivery_id         as DeliveryId,
      last_changed_at     as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _SalesItem
}
