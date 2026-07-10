@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Header Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRAP_c_INV_HDR
  provider contract transactional_query
  as projection on zrap_i_inv_hdr
{
  key InvoiceId,
      OrderId,
      InvoiceType,
      BillToParty,
      Payer,
      InvoiceDate,
      BillingDate,
      DueDate,
      Currency,
      @Semantics.amount.currencyCode: 'Currency'
      NetValue,
      @Semantics.amount.currencyCode: 'Currency'
      TaxAmount,
      @Semantics.amount.currencyCode: 'Currency'
      GrossValue,
      Status,
      PaymentTerms,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Item,
      _SalesOrder
}
