@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery Header Interface View'
define view entity ZRAP_i_DELIV_HDR
  as select from zrap_t_deliv_hdr
  association to parent zes_i_sales_hdr  as _SalesOrder on $projection.OrderId = _SalesOrder.OrderId
  composition [0..*] of zrap_i_deliv_itm as _Item
{
  key delivery_id           as DeliveryId,
      order_id              as OrderId,
      delivery_type         as DeliveryType,
      ship_to_party         as ShipToParty,
      shipping_point        as ShippingPoint,
      planned_gi_date       as PlannedGiDate,
      actual_gi_date        as ActualGiDate,
      delivery_date         as DeliveryDate,
      overall_status        as OverallStatus,
      goods_issue_status    as GoodsIssueStatus,
      picking_status        as PickingStatus,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _SalesOrder,
      _Item
}
