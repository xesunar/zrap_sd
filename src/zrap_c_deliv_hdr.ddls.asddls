@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Delivery Header Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRAP_c_DELIV_HDR
  provider contract transactional_query
  as projection on ZRAP_i_DELIV_HDR
{
  key DeliveryId,
      OrderId,
      DeliveryType,
      ShipToParty,
      ShippingPoint,
      PlannedGiDate,
      ActualGiDate,
      DeliveryDate,
      OverallStatus,
      GoodsIssueStatus,
      PickingStatus,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Item,
      _SalesOrder
}
