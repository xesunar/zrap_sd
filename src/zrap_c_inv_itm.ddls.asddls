@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Item Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRAP_c_INV_ITM
provider contract transactional_query
  as projection on zrap_i_inv_itm
{
  key InvoiceId,
  key ItemNo,
      OrderId,
      OrderItemNo,
      Material,
      Description,
      Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      BilledQty,
      Currency,
      @Semantics.amount.currencyCode: 'Currency'
      NetPrice,
      @Semantics.amount.currencyCode: 'Currency'
      NetValue,
      @Semantics.amount.currencyCode: 'Currency'
      TaxAmount,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _InvHeader
}
