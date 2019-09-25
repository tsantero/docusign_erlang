-module(swagger_billing_charge).

-export([encode/1]).

-export_type([swagger_billing_charge/0]).

-type swagger_billing_charge() ::
    #{ 'allowedQuantity' => binary(),
       'blocked' => binary(),
       'chargeName' => binary(),
       'chargeType' => binary(),
       'chargeUnitOfMeasure' => binary(),
       'discounts' => list(),
       'firstEffectiveDate' => binary(),
       'includedQuantity' => binary(),
       'incrementalQuantity' => binary(),
       'lastEffectiveDate' => binary(),
       'prices' => list(),
       'unitPrice' => binary(),
       'usedQuantity' => binary()
     }.

encode(#{ 'allowedQuantity' := AllowedQuantity,
          'blocked' := Blocked,
          'chargeName' := ChargeName,
          'chargeType' := ChargeType,
          'chargeUnitOfMeasure' := ChargeUnitOfMeasure,
          'discounts' := Discounts,
          'firstEffectiveDate' := FirstEffectiveDate,
          'includedQuantity' := IncludedQuantity,
          'incrementalQuantity' := IncrementalQuantity,
          'lastEffectiveDate' := LastEffectiveDate,
          'prices' := Prices,
          'unitPrice' := UnitPrice,
          'usedQuantity' := UsedQuantity
        }) ->
    #{ 'allowedQuantity' => AllowedQuantity,
       'blocked' => Blocked,
       'chargeName' => ChargeName,
       'chargeType' => ChargeType,
       'chargeUnitOfMeasure' => ChargeUnitOfMeasure,
       'discounts' => Discounts,
       'firstEffectiveDate' => FirstEffectiveDate,
       'includedQuantity' => IncludedQuantity,
       'incrementalQuantity' => IncrementalQuantity,
       'lastEffectiveDate' => LastEffectiveDate,
       'prices' => Prices,
       'unitPrice' => UnitPrice,
       'usedQuantity' => UsedQuantity
     }.
