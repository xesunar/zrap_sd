@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery Item Interface View'

define view entity zrap_i_deliv_itm
  as select from zrap_t_deliv_itm
  association to parent ZRAP_i_DELIV_HDR as _DelivHeader on $projection.DeliveryId = _DelivHeader.DeliveryId
{
  key delivery_id           as DeliveryId,
  key item_no               as ItemNo,
      order_id              as OrderId,
      order_item_no         as OrderItemNo,
      material              as Material,
      description           as Description,
      plant                 as Plant,
      storage_loc           as StorageLoc,
      uom                   as Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      delivery_qty          as DeliveryQty,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      picked_qty            as PickedQty,
      picking_status        as PickingStatus,
      goods_issue_status    as GoodsIssueStatus,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _DelivHeader
}
