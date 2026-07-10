@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Item Interface View'

define view entity zrap_i_inv_itm
  as select from zrap_t_inv_itm
  association to parent ZRAP_i_INV_HDR as _InvHeader on $projection.InvoiceId = _InvHeader.InvoiceId
{
  key invoice_id            as InvoiceId,
  key item_no               as ItemNo,
      order_id              as OrderId,
      order_item_no         as OrderItemNo,
      material              as Material,
      description           as Description,
      uom                   as Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      billed_qty            as BilledQty,
      currency              as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      net_price             as NetPrice,
      @Semantics.amount.currencyCode: 'Currency'
      net_value             as NetValue,
      @Semantics.amount.currencyCode: 'Currency'
      tax_amount            as TaxAmount,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _InvHeader
}
