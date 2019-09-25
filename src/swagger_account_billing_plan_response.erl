-module(swagger_account_billing_plan_response).

-export([encode/1]).

-export_type([swagger_account_billing_plan_response/0]).

-type swagger_account_billing_plan_response() ::
    #{ 'billingAddress' => swagger_account_address:swagger_account_address(),
       'billingAddressIsCreditCardAddress' => binary(),
       'billingPlan' => swagger_account_billing_plan:swagger_account_billing_plan(),
       'creditCardInformation' => swagger_credit_card_information:swagger_credit_card_information(),
       'directDebitProcessorInformation' => swagger_direct_debit_processor_information:swagger_direct_debit_processor_information(),
       'paymentMethod' => binary(),
       'paymentProcessorInformation' => swagger_payment_processor_information:swagger_payment_processor_information(),
       'referralInformation' => swagger_referral_information:swagger_referral_information(),
       'successorPlans' => list()
     }.

encode(#{ 'billingAddress' := BillingAddress,
          'billingAddressIsCreditCardAddress' := BillingAddressIsCreditCardAddress,
          'billingPlan' := BillingPlan,
          'creditCardInformation' := CreditCardInformation,
          'directDebitProcessorInformation' := DirectDebitProcessorInformation,
          'paymentMethod' := PaymentMethod,
          'paymentProcessorInformation' := PaymentProcessorInformation,
          'referralInformation' := ReferralInformation,
          'successorPlans' := SuccessorPlans
        }) ->
    #{ 'billingAddress' => BillingAddress,
       'billingAddressIsCreditCardAddress' => BillingAddressIsCreditCardAddress,
       'billingPlan' => BillingPlan,
       'creditCardInformation' => CreditCardInformation,
       'directDebitProcessorInformation' => DirectDebitProcessorInformation,
       'paymentMethod' => PaymentMethod,
       'paymentProcessorInformation' => PaymentProcessorInformation,
       'referralInformation' => ReferralInformation,
       'successorPlans' => SuccessorPlans
     }.
