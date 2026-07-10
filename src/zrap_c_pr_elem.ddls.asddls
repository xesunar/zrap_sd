@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Pricing Element Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZRAP_c_PR_ELEM
  provider contract transactional_query
  as projection on zrap_i_pr_elem
{
  key OrderId,
  key ItemNo,
  key StepNo,
      ConditionType,
      @Semantics.amount.currencyCode: 'Currency'
      ConditionValue,
      Currency,
      @Semantics.amount.currencyCode: 'Currency'
      ConditionAmount,
      CalculationType,
      @Semantics.amount.currencyCode: 'Currency'
      ConditionBase,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _SalesItem
}
