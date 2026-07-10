@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery Item Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRAP_c_DELIV_ITM
  provider contract transactional_query
  as projection on zrap_i_deliv_itm
{
  key DeliveryId,
  key ItemNo,
      OrderId,
      OrderItemNo,
      Material,
      Description,
      Plant,
      StorageLoc,
      Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      DeliveryQty,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      PickedQty,
      PickingStatus,
      GoodsIssueStatus,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _DelivHeader
}
