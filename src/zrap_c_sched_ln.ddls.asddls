@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Schedule Line Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRAP_c_SCHED_LN
  provider contract transactional_query
  as projection on zrap_i_sched_ln
{
  key OrderId,
  key ItemNo,
  key ScheduleLineNo,
      RequestedDelDate,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      ScheduledQty,
      Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      ConfirmedQty,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      DeliveredQty,
      DeliveryId,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _SalesItem
}
