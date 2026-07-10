@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header Projection View'
@Metadata.allowExtensions: true
define root view entity ZES_c_SALES_HDR
  provider contract transactional_query
  as projection on zes_i_sales_hdr as SalesOrder

{
  key OrderId,
      OrderType,
      SalesOrg,
      DistChannel,
      Division,
      SoldToParty,
      ShipToParty,
      BillToParty,
      OrderDate,
      RequestedDelDate,
      Currency,
      NetValue,
      Status,
      RejectionReason,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Delivery,
      _Invoice,
      _Item,
      _Partner
}
