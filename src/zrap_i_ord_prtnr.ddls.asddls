@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Partner Interface View'

define view entity zrap_i_ord_prtnr
  as select from zrap_t_ord_prtnr
  association to parent zes_i_sales_hdr as _SalesOrder on $projection.OrderId = _SalesOrder.OrderId
{
  key order_id              as OrderId,
  key partner_func          as PartnerFunc,
      partner_no            as PartnerNo,
      partner_name          as PartnerName,
      street                as Street,
      city                  as City,
      postal_code           as PostalCode,
      country               as Country,
      phone                 as Phone,
      email                 as Email,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _SalesOrder
}
