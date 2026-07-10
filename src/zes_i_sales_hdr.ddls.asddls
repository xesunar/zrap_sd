@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header Interface View'

define root view entity zes_i_sales_hdr
  as select from zrap_t_sales_hdr
  composition [0..*] of zes_i_sales_itm  as _Item
  composition [0..*] of ZRAP_i_DELIV_HDR as _Delivery
  composition [0..*] of zrap_i_inv_hdr   as _Invoice
  composition [0..*] of zrap_i_ord_prtnr as _Partner
{
  key order_id              as OrderId,
      order_type            as OrderType,
      sales_org             as SalesOrg,
      dist_channel          as DistChannel,
      division              as Division,
      sold_to_party         as SoldToParty,
      ship_to_party         as ShipToParty,
      bill_to_party         as BillToParty,
      order_date            as OrderDate,
      requested_del_date    as RequestedDelDate,
      currency              as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      net_value             as NetValue,
      status                as Status,
      rejection_reason      as RejectionReason,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _Item,
      _Delivery,
      _Invoice,
      _Partner
}
