@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Partner Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRAP_c_ORD_PRTNR
  provider contract transactional_query
  as projection on zrap_i_ord_prtnr
{
  key OrderId,
  key PartnerFunc,
      PartnerNo,
      PartnerName,
      Street,
      City,
      PostalCode,
      Country,
      Phone,
      Email,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _SalesOrder
}
