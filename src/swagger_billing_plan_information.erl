-module(swagger_billing_plan_information).

-export([encode/1]).

-export_type([swagger_billing_plan_information/0]).

-type swagger_billing_plan_information() ::
    #{ 'appStoreReceipt' => swagger_app_store_receipt:swagger_app_store_receipt(),
       'billingAddress' => swagger_account_address:swagger_account_address(),
       'creditCardInformation' => swagger_credit_card_information:swagger_credit_card_information(),
       'directDebitProcessorInformation' => swagger_direct_debit_processor_information:swagger_direct_debit_processor_information(),
       'downgradeReason' => binary(),
       'enableSupport' => binary(),
       'includedSeats' => binary(),
       'incrementalSeats' => binary(),
       'paymentMethod' => binary(),
       'paymentProcessorInformation' => swagger_payment_processor_information:swagger_payment_processor_information(),
       'planInformation' => swagger_plan_information:swagger_plan_information(),
       'referralInformation' => swagger_referral_information:swagger_referral_information(),
       'renewalStatus' => binary(),
       'saleDiscountAmount' => binary(),
       'saleDiscountFixedAmount' => binary(),
       'saleDiscountPercent' => binary(),
       'saleDiscountPeriods' => binary(),
       'saleDiscountSeatPriceOverride' => binary()
     }.

encode(#{ 'appStoreReceipt' := AppStoreReceipt,
          'billingAddress' := BillingAddress,
          'creditCardInformation' := CreditCardInformation,
          'directDebitProcessorInformation' := DirectDebitProcessorInformation,
          'downgradeReason' := DowngradeReason,
          'enableSupport' := EnableSupport,
          'includedSeats' := IncludedSeats,
          'incrementalSeats' := IncrementalSeats,
          'paymentMethod' := PaymentMethod,
          'paymentProcessorInformation' := PaymentProcessorInformation,
          'planInformation' := PlanInformation,
          'referralInformation' := ReferralInformation,
          'renewalStatus' := RenewalStatus,
          'saleDiscountAmount' := SaleDiscountAmount,
          'saleDiscountFixedAmount' := SaleDiscountFixedAmount,
          'saleDiscountPercent' := SaleDiscountPercent,
          'saleDiscountPeriods' := SaleDiscountPeriods,
          'saleDiscountSeatPriceOverride' := SaleDiscountSeatPriceOverride
        }) ->
    #{ 'appStoreReceipt' => AppStoreReceipt,
       'billingAddress' => BillingAddress,
       'creditCardInformation' => CreditCardInformation,
       'directDebitProcessorInformation' => DirectDebitProcessorInformation,
       'downgradeReason' => DowngradeReason,
       'enableSupport' => EnableSupport,
       'includedSeats' => IncludedSeats,
       'incrementalSeats' => IncrementalSeats,
       'paymentMethod' => PaymentMethod,
       'paymentProcessorInformation' => PaymentProcessorInformation,
       'planInformation' => PlanInformation,
       'referralInformation' => ReferralInformation,
       'renewalStatus' => RenewalStatus,
       'saleDiscountAmount' => SaleDiscountAmount,
       'saleDiscountFixedAmount' => SaleDiscountFixedAmount,
       'saleDiscountPercent' => SaleDiscountPercent,
       'saleDiscountPeriods' => SaleDiscountPeriods,
       'saleDiscountSeatPriceOverride' => SaleDiscountSeatPriceOverride
     }.
