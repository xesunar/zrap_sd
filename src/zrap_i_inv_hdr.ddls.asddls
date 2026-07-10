@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Header Interface View'

define view entity zrap_i_inv_hdr
  as select from zrap_t_inv_hdr
  association to parent zes_i_sales_hdr as _SalesOrder on $projection.OrderId = _SalesOrder.OrderId
  composition [0..*] of zrap_i_inv_itm  as _Item
{
  key invoice_id            as InvoiceId,
      order_id              as OrderId,
      invoice_type          as InvoiceType,
      bill_to_party         as BillToParty,
      payer                 as Payer,
      invoice_date          as InvoiceDate,
      billing_date          as BillingDate,
      due_date              as DueDate,
      currency              as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      net_value             as NetValue,
      @Semantics.amount.currencyCode: 'Currency'
      tax_amount            as TaxAmount,
      @Semantics.amount.currencyCode: 'Currency'
      gross_value           as GrossValue,
      status                as Status,
      payment_terms         as PaymentTerms,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _SalesOrder,
      _Item
}
