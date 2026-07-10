@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Pricing Element Interface View'

define view entity zrap_i_pr_elem
  as select from zrap_t_pr_elem
  association to parent zes_i_sales_itm as _SalesItem
    on $projection.OrderId = _SalesItem.OrderId
   and $projection.ItemNo  = _SalesItem.ItemNo
{
  key order_id              as OrderId,
  key item_no               as ItemNo,
  key step_no               as StepNo,
      condition_type        as ConditionType,
      condition_value       as ConditionValue,
      currency              as Currency,
      @Semantics.amount.currencyCode: 'Currency'
      condition_amount      as ConditionAmount,
      calculation_type      as CalculationType,
      @Semantics.amount.currencyCode: 'Currency'
      condition_base        as ConditionBase,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _SalesItem
}
