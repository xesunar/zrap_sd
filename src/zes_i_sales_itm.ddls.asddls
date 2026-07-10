@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item Interface View'

define view entity zes_i_sales_itm
  as select from zrap_t_sales_itm
  association to parent zes_i_sales_hdr as _SalesOrder on $projection.OrderId = _SalesOrder.OrderId
  composition [0..*] of zrap_i_sched_ln as _ScheduleLine
  composition [0..*] of zrap_i_pr_elem as _PricingElement
{
  key order_id              as OrderId,
  key item_no               as ItemNo,
      material              as Material,
      description           as Description,
      plant                 as Plant,
      storage_loc           as StorageLoc,
      uom                   as Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      order_qty             as OrderQty,
      currency              as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      net_price             as NetPrice,
      @Semantics.amount.currencyCode: 'Currency'
      net_value             as NetValue,
      status                as Status,
      rejection_reason      as RejectionReason,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      delivered_qty         as DeliveredQty,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      billed_qty            as BilledQty,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _SalesOrder,
      _ScheduleLine,
      _PricingElement
}
