@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZES_c_SALES_ITM
  provider contract transactional_query
  as projection on zes_i_sales_itm
{
  key OrderId,
  key ItemNo,
      Material,
      Description,
      Plant,
      StorageLoc,
      Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      OrderQty,
      Currency,
      @Semantics.amount.currencyCode: 'Currency'
      NetPrice,
      @Semantics.amount.currencyCode: 'Currency'
      NetValue,
      Status,
      RejectionReason,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      DeliveredQty,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      BilledQty,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _SalesOrder,
      _ScheduleLine
}
